var voteData = []

$(document).ready(function(){
    $('.select2drpdwn').select2({
        placeholder: "All",
        allowClear: false
    });

});

$('#etype').on('select2:select', function (e) {
    var type = $(this).val();
    loadDropdowns(type);
})

$('#ename').on('select2:select', function (e) {
    var eid = $(this).val();
    loadTable(eid);
    getVoteData(eid);
})

function loadDropdowns(eType) {
    $.ajax({
        type: "GET",
        url: "/get_elections",
    }).done(function(response) {
        if(response.error) {
            console.log(response.error)
            Toast.fire({
                icon: 'error',
                title: response.message
            })
        } else {
            console.log(response.data)
            var elections = response.data;
            var enames = '<option value="11" disabled="disabled" selected>Please Select</option>';
            var totalElections = 0;
            var filteredData = _.filter(elections, function(o) { return o.e_type == eType; });
            filteredData.forEach(election => {
                if(!moment().isBetween(election.startdate, election.enddate)){
                    totalElections ++;
                    enames += '<option value="' + election.eid +'">' + election.e_name + '</option>'
                }
            });
            if(totalElections == 0) {
                Toast.fire({
                    icon: 'error',
                    title: "No Elections available for given type right now"
                })
            }
            $('#ename').html(enames)
        }
    })
}

function loadTable(eid) {
    enablepreloader('Please Wait...');
    $.ajax({
        type: "POST",
        url: "/get_election_results",
        data: {
            eid: eid
        }
    }).done(function(response) {
        disablePreloader();
        if(response.error) {
            console.log(response.error)
            Toast.fire({
                icon: 'error',
                title: response.message
            })
        } else {
            voteData = response.data
            loadBarChart(); // liad bar chart
            loadPieChart(); // load pie chart
            $('#myTable').DataTable( {
                data: response.data,
                "bDestroy": true,
                dom: 'Bfrtip',
                // buttons: [
                //     'excelHtml5',
                //     'pdfHtml5'
                // ],
                 buttons: [
                    {
                        extend: 'excelHtml5',
                        text: '<i class="fa fa-files-o"></i>Excel',
                        className: 'btn btn-success', // Customize the button class
                    },
                    {
                        extend: 'pdfHtml5',
                        text: '<i class="fas fa-file-pdf"></i>PDF',
                        className: 'btn btn-danger', // Customize the button class
                    },
                ],
                columns: [
                    {
                        data: 'cname',
                        render: function ( data, type, row ) {
                             return '<div class="flex items-center text-sm">' +
                                '<div class="relative hidden w-8 h-8 mr-3 rounded-full md:block" >' +
                               '<img class="object-cover w-full h-full rounded-full"' +
                                 'src="' + row.cimage_url + '"' +
                                 'alt="" loading="lazy"/>' +
                               '<div class="absolute inset-0 rounded-full shadow-inner" aria-hidden="true"></div>' +
                             '</div>' + 
                             '<div>' +
                               '<p class="font-semibold">' + data + '</p>' +
                             '</div>' +
                           '</div>' 
                        }
                    },
                    { data: 'cprovince' },
                    { 
                        data: 'pname',
                        render: function ( data, type, row ) {
                            return '<div class="flex items-center text-sm">' +
                            '<div class="relative hidden w-8 h-8 mr-3 rounded-full md:block" >' +
                              '<img class="object-cover w-full h-full rounded-full"' +
                                'src="' + row.pimage_url + '"' +
                                'alt="party" loading="lazy"/>' +
                              '<div class="absolute inset-0 rounded-full shadow-inner" aria-hidden="true"></div>' +
                            '</div>' +
                            '<div>' +
                              '<p class="font-semibold">' + data + '</p>' +
                            '</div>' +
                          '</div>'
                        } 
                    },
                    { data: 'vote_count' },
                ]
            } );
        }
    })
}

function getVoteData(eid) {
    enablepreloader('Please wait...')
    $.ajax({
        type: "POST",
        url: "/get_vote_list",
        data: {
            eid: eid
        }
    }).done(function(response) {
        disablePreloader();
        if(response.error) {
            console.log(response.error)
            Toast.fire({
                icon: 'error',
                title: response.message
            })
        } else {
            var results = response.data.votingData;
            let totalRejected = (_.filter(results, function(o) { return o.vote == 0; })).length;
            let totalVotes = (_.chain(results).groupBy("vuser_id").map((value, key) => ({ user: key, votes: value })).value()).length;
            let totalVoters = response.data.votingUsers.length;
            let percentage = (((totalVotes/totalVoters) * 100).toFixed(3) + '%');

            $('#tv').html(totalVotes)
            $('#tvr').html(totalVoters)
            $('#tr').html(totalRejected)
            $('#percentageVal').html(percentage)

            disablePreloader()
        }
    })
}

function loadBarChart() {
    var dataset = [];
    var labelSet = [];
    var colorSet = [];
    
    voteData.forEach(element => {
        var randomColor = Math.floor(Math.random()*16777215).toString(16);
        labelSet.push(element.cname);
        dataset.push(element.vote_count);
        colorSet.push('#'+ randomColor);
    });

    const barConfig = {
        type: 'bar',
        data: {
          labels: labelSet,
          datasets: [{
                label: '',
                data: dataset,
                backgroundColor: colorSet,
                borderWidth: 1,
          }],
        },
        options: {
            responsive: true,
            scales: {
                yAxes: [{
                    ticks: {
                        beginAtZero: true
                    }
                }]
            },
            legend: {
                display: false
            }
        }
    }
      
      const barsCtx = document.getElementById('bars')
      window.myBar = barsCtx ? new Chart(barsCtx, barConfig) : null
}

function loadPieChart() {
    let parties = _.uniq(_.map(voteData, 'pname'))
    let partyCount = []
    let colors = []
    
    parties.forEach(element => {
        var randomColor = Math.floor(Math.random()*16777215).toString(16);
        partyCount.push( _.sumBy(voteData, function(o) { if(o.pname == element) {return o.vote_count} else { return null} }))
        colors.push('#' + randomColor)
    });

    const pieConfig = {
        type: 'doughnut',
        data: {
          datasets: [
            {
              data: partyCount,
              backgroundColor: colors,
              label: 'Dataset 1',
            },
          ],
          labels: parties,
        },
        options: {
          responsive: true,
          cutoutPercentage: 80,
          legend: {
            display: false,
          },
        },
      }
      
      // change this to the id of your chart element in HMTL
      const pieCtx = document.getElementById('pie')
      window.myPie = pieCtx ? new Chart(pieCtx, pieConfig) : null
}