/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 80033 (8.0.33)
 Source Host           : localhost:3306
 Source Schema         : evote

 Target Server Type    : MySQL
 Target Server Version : 80033 (8.0.33)
 File Encoding         : 65001

 Date: 11/09/2024 23:43:56
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for candidate
-- ----------------------------
DROP TABLE IF EXISTS `candidate`;
CREATE TABLE `candidate`  (
  `cid` int NOT NULL AUTO_INCREMENT,
  `cname` char(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0',
  `cprovince` char(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0',
  `cimage_url` char(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0',
  `party` char(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`cid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = 'stores data about candidates' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of candidate
-- ----------------------------
INSERT INTO `candidate` VALUES (2, 'amal', 'western', '/images/candidates/image-1698210775587.png', '1');
INSERT INTO `candidate` VALUES (3, 'Sunil Shantha', 'western', '/images/candidates/image-1698259386686.png', '6');
INSERT INTO `candidate` VALUES (5, 'Nishantha Pieris', 'western', '/images/candidates/image-1698259386686.png', '1');
INSERT INTO `candidate` VALUES (7, 'Jayantha', 'western', '/images/candidates/image-1701584295085.jpeg', '6');
INSERT INTO `candidate` VALUES (8, 'Yasapala Koralage', 'eastern', '/images/candidates/image-1701585115653.jpeg', '1');
INSERT INTO `candidate` VALUES (9, 'sunil shantha', 'eastern', '/images/candidates/image-1701620236760.jpeg', '6');
INSERT INTO `candidate` VALUES (10, 'Nimal Lansa', 'western', '/images/candidates/image-1702567143507.jpeg', '8');
INSERT INTO `candidate` VALUES (11, 'Nihal Perera', 'western', '/images/candidates/image-1706164939883.jpeg', '1');
INSERT INTO `candidate` VALUES (12, 'Somapala Gamage', 'western', '/images/candidates/image-1706165049135.jpeg', '6');
INSERT INTO `candidate` VALUES (13, 'Gayan Sampath', 'western', '/images/candidates/image-1706165086660.jpeg', '8');
INSERT INTO `candidate` VALUES (14, 'Ashan Gamlath', 'western', '/images/candidates/image-1706165130849.jpeg', '8');
INSERT INTO `candidate` VALUES (15, 'Sanath Jayasuriya', 'western', '/images/candidates/image-1707578667329.jpeg', '6');

-- ----------------------------
-- Table structure for election
-- ----------------------------
DROP TABLE IF EXISTS `election`;
CREATE TABLE `election`  (
  `eid` int NOT NULL AUTO_INCREMENT,
  `e_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0',
  `e_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0',
  `startdate` char(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `enddate` char(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`eid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = 'use to store election related data' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of election
-- ----------------------------
INSERT INTO `election` VALUES (6, '2023 Province Dec 10', 'provincial', '2023-12-10T08:52', '2023-12-11T16:54');
INSERT INTO `election` VALUES (7, '2023 Presidential Dec 10', 'presidential', '2023-12-10T08:52', '2023-12-11T17:55');
INSERT INTO `election` VALUES (9, '2023-12-12 election', 'provincial', '2023-12-12T06:35', '2023-12-13T06:35');
INSERT INTO `election` VALUES (10, '2024-01-25 presidential election', 'presidential', '2024-02-10T10:17', '2024-02-10T16:18');
INSERT INTO `election` VALUES (11, '2024-01-25 provincial election', 'provincial', '2024-02-11T11:18', '2024-02-11T16:29');

-- ----------------------------
-- Table structure for election_candidate
-- ----------------------------
DROP TABLE IF EXISTS `election_candidate`;
CREATE TABLE `election_candidate`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `eid` int NULL DEFAULT 0,
  `cid` int NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 60 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = 'mapping table' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of election_candidate
-- ----------------------------
INSERT INTO `election_candidate` VALUES (12, 9, 8);
INSERT INTO `election_candidate` VALUES (13, 9, 3);
INSERT INTO `election_candidate` VALUES (14, 9, 9);
INSERT INTO `election_candidate` VALUES (15, 2, 2);
INSERT INTO `election_candidate` VALUES (16, 2, 5);
INSERT INTO `election_candidate` VALUES (17, 2, 8);
INSERT INTO `election_candidate` VALUES (18, 2, 3);
INSERT INTO `election_candidate` VALUES (19, 2, 7);
INSERT INTO `election_candidate` VALUES (20, 2, 9);
INSERT INTO `election_candidate` VALUES (21, 2, 10);
INSERT INTO `election_candidate` VALUES (22, 1, 2);
INSERT INTO `election_candidate` VALUES (23, 1, 5);
INSERT INTO `election_candidate` VALUES (24, 1, 10);
INSERT INTO `election_candidate` VALUES (25, 10, 2);
INSERT INTO `election_candidate` VALUES (26, 10, 3);
INSERT INTO `election_candidate` VALUES (27, 10, 10);
INSERT INTO `election_candidate` VALUES (49, 11, 2);
INSERT INTO `election_candidate` VALUES (50, 11, 5);
INSERT INTO `election_candidate` VALUES (51, 11, 8);
INSERT INTO `election_candidate` VALUES (52, 11, 11);
INSERT INTO `election_candidate` VALUES (53, 11, 3);
INSERT INTO `election_candidate` VALUES (54, 11, 7);
INSERT INTO `election_candidate` VALUES (55, 11, 9);
INSERT INTO `election_candidate` VALUES (56, 11, 12);
INSERT INTO `election_candidate` VALUES (57, 11, 10);
INSERT INTO `election_candidate` VALUES (58, 11, 13);
INSERT INTO `election_candidate` VALUES (59, 11, 14);

-- ----------------------------
-- Table structure for election_party_candidate
-- ----------------------------
DROP TABLE IF EXISTS `election_party_candidate`;
CREATE TABLE `election_party_candidate`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `election_id` int NOT NULL DEFAULT 0,
  `candiate_id` int NOT NULL DEFAULT 0,
  `party_id` int NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of election_party_candidate
-- ----------------------------
INSERT INTO `election_party_candidate` VALUES (1, 0, 1, 3);
INSERT INTO `election_party_candidate` VALUES (2, 0, 1, 2);
INSERT INTO `election_party_candidate` VALUES (3, 0, 1, 4);

-- ----------------------------
-- Table structure for party
-- ----------------------------
DROP TABLE IF EXISTS `party`;
CREATE TABLE `party`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `pname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `pNo` int NULL DEFAULT 0,
  `pimage_url` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = 'used to store party related data' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of party
-- ----------------------------
INSERT INTO `party` VALUES (1, 'UNP', 10, '/images/parties/image-1702100722130.png');
INSERT INTO `party` VALUES (6, 'JPV', 12, '/images/parties/image-1702100695678.jpeg');
INSERT INTO `party` VALUES (8, 'SLPP', 14, '/images/parties/image-1702100667706.jpeg');
INSERT INTO `party` VALUES (9, 'SJB', 16, '/images/parties/image-1702100815459.png');
INSERT INTO `party` VALUES (10, 'TMTK', 18, '/images/parties/image-1702100919391.png');
INSERT INTO `party` VALUES (11, 'SLFP', 20, '/images/parties/image-1702100972206.png');
INSERT INTO `party` VALUES (12, 'ITAK', 22, '/images/parties/image-1702101106152.jpeg');
INSERT INTO `party` VALUES (13, 'NC', 24, '/images/parties/image-1702102550928.png');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0',
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0',
  `password` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0',
  `type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0',
  `province` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `uimage_url` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `uvoting_center` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'all',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = 'user related data' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'Admin', 'admin', 'U2FsdGVkX19+L9MgCSm+Esx8u1a1W729sL4A5ZDhq7Q=', 'admin', 'all', 'active', '/images/avatars/avatar-1702099119873.png', '');
INSERT INTO `user` VALUES (2, 'Kinniya Divisional', 'Kinniya', 'U2FsdGVkX1/WxlvSGsI2uhGGTTYK9CyhIFEsDDGUOqg=', 'provincial_admin', 'eastern', 'active', '/images/avatars/avatar-1702099010291.jpeg', 'Kothalawala');
INSERT INTO `user` VALUES (3, 'Borupana Divisional', 'Borupana', 'U2FsdGVkX1+oQlyDPJywUH8/ONima8Vno1XQpGhXNE8=', 'provincial_admin', 'western', 'active', '/images/avatars/avatar-1702099026579.jpeg', 'Ratmalana');
INSERT INTO `user` VALUES (4, 'Golumadama Divisional', 'Golumadama', 'U2FsdGVkX18V2d0CIwXwFP9NFteyLhLveMVqjyNjmHY=', 'provincial_admin', 'western', 'active', '/images/avatars/avatar-1702099034747.jpeg', 'Rawathawaththa');
INSERT INTO `user` VALUES (5, 'Udadumbara Divisional', 'Udadumbara ', 'U2FsdGVkX1/WxlvSGsI2uhGGTTYK9CyhIFEsDDGUOqg=', 'provincial_admin', 'central', 'active', '/images/avatars/avatar-1702099043726.jpeg', 'all');
INSERT INTO `user` VALUES (6, 'Vavuniya Divisional', 'vavuniya', 'U2FsdGVkX1/WxlvSGsI2uhGGTTYK9CyhIFEsDDGUOqg=', 'provincial_admin', 'northern', 'active', '/images/avatars/avatar-1702099052980.jpeg', 'all');
INSERT INTO `user` VALUES (7, 'Dambulla Divisional', 'Dambulla ', 'U2FsdGVkX1/WxlvSGsI2uhGGTTYK9CyhIFEsDDGUOqg=', 'provincial_admin', 'central', 'active', '/images/avatars/avatar-1702099066118.jpeg', 'all');
INSERT INTO `user` VALUES (11, 'Gampaha Divisional', 'Gampaha', 'U2FsdGVkX192NTcIqVMZEX3ZjzLZth5vmd5bP2gdcqA=', 'provincial_admin', 'western', 'active', '/images/avatars/avatar-1702099074992.jpeg', 'Katubedda');
INSERT INTO `user` VALUES (12, 'Mihinthale Divisional', 'Mihinthale', 'U2FsdGVkX1/WxlvSGsI2uhGGTTYK9CyhIFEsDDGUOqg=', 'provincial_admin', 'north_central', 'active', '/images/avatars/avatar-1702099254752.jpeg', 'all');
INSERT INTO `user` VALUES (13, 'Kekirawa Divisional', 'Kekirawa', 'U2FsdGVkX1/WxlvSGsI2uhGGTTYK9CyhIFEsDDGUOqg=', 'provincial_admin', 'north_central', 'active', '/images/avatars/avatar-1702099307828.jpeg', 'all');
INSERT INTO `user` VALUES (14, 'Kurunegala Divisional', 'Kurunegala', 'U2FsdGVkX1/WxlvSGsI2uhGGTTYK9CyhIFEsDDGUOqg=', 'provincial_admin', 'north_western', 'active', '/images/avatars/avatar-1702099359521.jpeg', 'all');
INSERT INTO `user` VALUES (15, 'Wariyapola Divisional', 'Wariyapola', 'U2FsdGVkX1/WxlvSGsI2uhGGTTYK9CyhIFEsDDGUOqg=', 'provincial_admin', 'north_western', 'active', '/images/avatars/avatar-1702099384111.jpeg', 'all');
INSERT INTO `user` VALUES (16, 'Kuruvita Divisional', 'Kuruvita', 'U2FsdGVkX1/WxlvSGsI2uhGGTTYK9CyhIFEsDDGUOqg=', 'provincial_admin', 'sabaragamuwa', 'active', '/images/avatars/avatar-1702099435637.jpeg', 'all');
INSERT INTO `user` VALUES (17, 'Godakawela Divisional', 'Godakawela', 'U2FsdGVkX1/WxlvSGsI2uhGGTTYK9CyhIFEsDDGUOqg=', 'provincial_admin', 'sabaragamuwa', 'active', '/images/avatars/avatar-1702099486295.jpeg', 'all');
INSERT INTO `user` VALUES (18, 'Galle Divisional', 'Galle ', 'U2FsdGVkX1/WxlvSGsI2uhGGTTYK9CyhIFEsDDGUOqg=', 'provincial_admin', 'southern', 'active', '/images/avatars/avatar-1702099553640.jpeg', 'all');
INSERT INTO `user` VALUES (19, 'Akuressa Divisional', 'Akuressa', 'U2FsdGVkX1/WxlvSGsI2uhGGTTYK9CyhIFEsDDGUOqg=', 'provincial_admin', 'southern', 'active', '/images/avatars/avatar-1702099588365.jpeg', 'all');
INSERT INTO `user` VALUES (20, 'Badulla Divisional', 'Badulla', 'U2FsdGVkX1/WxlvSGsI2uhGGTTYK9CyhIFEsDDGUOqg=', 'provincial_admin', 'uva', 'active', '/images/avatars/avatar-1702099627321.jpeg', 'all');
INSERT INTO `user` VALUES (21, 'Katharagama Divisional', 'Katharagama', 'U2FsdGVkX1/WxlvSGsI2uhGGTTYK9CyhIFEsDDGUOqg=', 'provincial_admin', 'uva', 'active', '/images/avatars/avatar-1702099659254.jpeg', 'all');
INSERT INTO `user` VALUES (22, 'Muttur Divisional', 'Muttur', 'U2FsdGVkX1/WxlvSGsI2uhGGTTYK9CyhIFEsDDGUOqg=', 'provincial_admin', 'eastern', 'active', '/images/avatars/avatar-1702099744942.jpeg', 'all');
INSERT INTO `user` VALUES (23, 'qeqweqw', 'test', 'U2FsdGVkX19gm19fqEo1yd165oopze9DrLPX7yF02vA=', 'provincial_admin', 'all', 'inactive', '/images/avatars/avatar-1702654653977.jpeg', 'all');

-- ----------------------------
-- Table structure for user_votes
-- ----------------------------
DROP TABLE IF EXISTS `user_votes`;
CREATE TABLE `user_votes`  (
  `uvid` int NOT NULL AUTO_INCREMENT,
  `election_id` int NOT NULL DEFAULT 0,
  `vuser_id` int NOT NULL DEFAULT 0,
  `vote` int NULL DEFAULT NULL COMMENT 'candidate ID',
  `candidate_party_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`uvid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = 'used to store voting data' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user_votes
-- ----------------------------
INSERT INTO `user_votes` VALUES (1, 2, 1, 2, 2);
INSERT INTO `user_votes` VALUES (7, 1, 1, 0, NULL);
INSERT INTO `user_votes` VALUES (8, 2, 2, 5, NULL);
INSERT INTO `user_votes` VALUES (9, 1, 2, 0, NULL);
INSERT INTO `user_votes` VALUES (10, 2, 3, 2, NULL);
INSERT INTO `user_votes` VALUES (11, 1, 6, 5, NULL);
INSERT INTO `user_votes` VALUES (12, 1, 6, 3, NULL);
INSERT INTO `user_votes` VALUES (13, 1, 7, 0, NULL);
INSERT INTO `user_votes` VALUES (14, 1, 8, 5, NULL);
INSERT INTO `user_votes` VALUES (15, 2, 8, 0, NULL);
INSERT INTO `user_votes` VALUES (16, 1, 9, 5, NULL);
INSERT INTO `user_votes` VALUES (21, 11, 11, 5, 1);
INSERT INTO `user_votes` VALUES (22, 10, 11, 10, 8);
INSERT INTO `user_votes` VALUES (23, 11, 14, 11, 1);
INSERT INTO `user_votes` VALUES (24, 11, 15, 7, 6);
INSERT INTO `user_votes` VALUES (25, 10, 14, 3, 6);
INSERT INTO `user_votes` VALUES (26, 10, 15, 3, 6);
INSERT INTO `user_votes` VALUES (27, 10, 17, 10, 8);
INSERT INTO `user_votes` VALUES (28, 10, 18, 2, 1);
INSERT INTO `user_votes` VALUES (29, 10, 19, 3, 6);
INSERT INTO `user_votes` VALUES (30, 10, 20, 10, 8);

-- ----------------------------
-- Table structure for voting_center
-- ----------------------------
DROP TABLE IF EXISTS `voting_center`;
CREATE TABLE `voting_center`  (
  `center_id` int NOT NULL AUTO_INCREMENT,
  `center_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `center_province` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`center_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = 'voting center related data' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of voting_center
-- ----------------------------
INSERT INTO `voting_center` VALUES (1, 'Kothalawala', 'western');
INSERT INTO `voting_center` VALUES (5, 'Ratmalana', 'western');
INSERT INTO `voting_center` VALUES (6, 'Rawathawaththa', 'western');
INSERT INTO `voting_center` VALUES (7, 'Katubedda', 'western');

-- ----------------------------
-- Table structure for voting_user
-- ----------------------------
DROP TABLE IF EXISTS `voting_user`;
CREATE TABLE `voting_user`  (
  `vid` int NOT NULL AUTO_INCREMENT,
  `fname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `lname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `fingerprint_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `province` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `nic` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `address` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `dob` date NULL DEFAULT NULL,
  `is_alive` int NULL DEFAULT 1,
  `user_vcenter` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'all',
  PRIMARY KEY (`vid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 117 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = 'stores the voter details' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of voting_user
-- ----------------------------
INSERT INTO `voting_user` VALUES (1, 'Sunil', 'Perera', 'image1.png', 'western', '949302045V', 'Colombo, Western Province', '1994-01-02', 1, 'Kothalawala');
INSERT INTO `voting_user` VALUES (2, 'Kamal', 'Silva', 'image2.png', 'western', '919392345V', 'Kandy, Central Province', '1991-02-03', 1, 'Kothalawala');
INSERT INTO `voting_user` VALUES (3, 'Nimal', 'Siriwardena', 'image3.png', 'western', '889307345V', 'Matara, Southern Province', '1988-03-04', 1, 'Kothalawala');
INSERT INTO `voting_user` VALUES (5, 'Namal', 'Rajapaksha', 'image4.png', 'western', '971302345V', 'Kandy, Central Province', '1997-04-05', 1, 'Kothalawala');
INSERT INTO `voting_user` VALUES (6, 'Jayani', 'Thakshila', 'image6.png', 'western', '909992345V', 'Galle, Southern Province', '1990-05-06', 1, 'Kothalawala');
INSERT INTO `voting_user` VALUES (7, 'Manduli', 'Lakma', 'image7.png', 'western', '879902345V', 'Jaffna, Northern Province', '1987-06-07', 1, 'Kothalawala');
INSERT INTO `voting_user` VALUES (8, 'Chamath', 'Muthukumarana', 'image8.png', 'western', '809302345V', 'Trincomalee, Eastern Province', '1980-07-08', 1, 'Kothalawala');
INSERT INTO `voting_user` VALUES (9, 'Kamal', 'Gamage', 'image9.png', 'western', '750302345V', 'Negombo, Western Province', '1975-08-10', 1, 'Kothalawala');
INSERT INTO `voting_user` VALUES (10, 'Kamal', 'Gamage', 'image10.png', 'western', '940102345V', 'Colombo, Western Province', '1994-01-02', 1, 'Ratmalana');
INSERT INTO `voting_user` VALUES (11, 'Nimal', 'Silva', 'image11.png', 'western', '910203456V', 'Kandy, Central Province', '1991-02-03', 1, 'Ratmalana');
INSERT INTO `voting_user` VALUES (12, 'Saman', 'Fernando', 'image12.png', 'southern', '880304567V', 'Matara, Southern Province', '1988-03-04', 1, 'Ratmalana');
INSERT INTO `voting_user` VALUES (13, 'Arun', 'Ratnayake', 'image13.png', 'central', '970405678V', 'Kandy, Central Province', '1997-04-05', 1, 'Ratmalana');
INSERT INTO `voting_user` VALUES (14, 'Mala', 'Fernando', 'image14.png', 'southern', '900506789V', 'Galle, Southern Province', '1990-05-06', 1, 'Ratmalana');
INSERT INTO `voting_user` VALUES (15, 'Sanjeewa', 'Perera', 'image15.png', 'northern', '870607890V', 'Jaffna, Northern Province', '1987-06-07', 1, 'Ratmalana');
INSERT INTO `voting_user` VALUES (16, 'Sarala', 'Gunasekara', 'image16.png', 'eastern', '800708901V', 'Trincomalee, Eastern Province', '1980-07-08', 1, 'Ratmalana');
INSERT INTO `voting_user` VALUES (17, 'Rohan', 'Wickramasinghe', 'image17.png', 'Western', '750810123V', 'Negombo, Western Province', '1975-08-10', 1, 'Ratmalana');
INSERT INTO `voting_user` VALUES (18, 'Nadeeka', 'Karunaratne', 'image18.png', 'central', '680911234V', 'Kandy, Central Province', '1968-09-11', 1, 'Ratmalana');
INSERT INTO `voting_user` VALUES (19, 'Dinesh', 'Jayawardena', 'image19.png', 'southern', '590012345V', 'Galle, Southern Province', '1959-10-12', 1, 'Ratmalana');
INSERT INTO `voting_user` VALUES (20, 'Anuradha', 'Fernando', 'image20.png', 'northern', '500113456V', 'Vavuniya, Northern Province', '1950-11-13', 1, 'Ratmalana');
INSERT INTO `voting_user` VALUES (21, 'Kamal', 'Gamage', 'image21.png', 'western', '210102345V', 'Colombo, Western Province', '2002-01-02', 1, 'Ratmalana');
INSERT INTO `voting_user` VALUES (22, 'Nimal', 'Silva', 'image22.png', 'central', '220203456V', 'Kandy, Central Province', '2002-02-03', 1, 'Ratmalana');
INSERT INTO `voting_user` VALUES (23, 'Saman', 'Fernando', 'image23.png', 'southern', '230304567V', 'Matara, Southern Province', '2002-03-04', 1, 'Ratmalana');
INSERT INTO `voting_user` VALUES (24, 'Arun', 'Ratnayake', 'image24.png', 'central', '240405678V', 'Kandy, Central Province', '2002-04-05', 1, 'Ratmalana');
INSERT INTO `voting_user` VALUES (25, 'Mala', 'Fernando', 'image25.png', 'southern', '250506789V', 'Galle, Southern Province', '2002-05-06', 1, 'all');
INSERT INTO `voting_user` VALUES (26, 'Sanjeewa', 'Perera', 'image26.png', 'northern', '260607890V', 'Jaffna, Northern Province', '2002-06-07', 1, 'all');
INSERT INTO `voting_user` VALUES (27, 'Sarala', 'Gunasekara', 'image27.png', 'eastern', '270708901V', 'Trincomalee, Eastern Province', '2002-07-08', 1, 'all');
INSERT INTO `voting_user` VALUES (28, 'Rohan', 'Wickramasinghe', 'image28.png', 'western', '280809012V', 'Negombo, Western Province', '2002-08-09', 1, 'all');
INSERT INTO `voting_user` VALUES (29, 'Nadeeka', 'Karunaratne', 'image29.png', 'central', '290910123V', 'Kandy, Central Province', '2002-09-10', 1, 'all');
INSERT INTO `voting_user` VALUES (30, 'Dinesh', 'Jayawardena', 'image30.png', 'southern', '301011234V', 'Galle, Southern Province', '2002-10-11', 1, 'all');
INSERT INTO `voting_user` VALUES (31, 'Anuradi', 'Fernando', 'image31.png', 'northern', '311112345V', 'Vavuniya, Northern Province', '2002-11-12', 1, 'all');
INSERT INTO `voting_user` VALUES (32, 'Kamal', 'Gamage', 'image32.png', 'western', '550102345V', 'Colombo, Western Province', '1991-12-03', 1, 'all');
INSERT INTO `voting_user` VALUES (33, 'Nimal', 'Silva', 'image33.png', 'central', '560203456V', 'Kandy, Central Province', '1990-12-03', 1, 'all');
INSERT INTO `voting_user` VALUES (34, 'Saman', 'Fernando', 'image34.png', 'southern', '570304567V', 'Matara, Southern Province', '1989-12-03', 1, 'all');
INSERT INTO `voting_user` VALUES (35, 'Arun', 'Ratnayake', 'image35.png', 'central', '580405678V', 'Kandy, Central Province', '1988-12-03', 1, 'all');
INSERT INTO `voting_user` VALUES (36, 'Mala', 'Fernando', 'image36.png', 'southern', '590506789V', 'Galle, Southern Province', '1987-12-03', 1, 'all');
INSERT INTO `voting_user` VALUES (37, 'Sanjeewa', 'Perera', 'image37.png', 'northern', '600607890V', 'Jaffna, Northern Province', '1986-12-03', 1, 'all');
INSERT INTO `voting_user` VALUES (38, 'Sarala', 'Gunasekara', 'image38.png', 'eastern', '610708901V', 'Trincomalee, Eastern Province', '1985-12-03', 1, 'all');
INSERT INTO `voting_user` VALUES (39, 'Rohan', 'Wickramasinghe', 'image39.png', 'western', '620810123V', 'Negombo, Western Province', '1984-12-03', 1, 'all');
INSERT INTO `voting_user` VALUES (40, 'Nadeeka', 'Karunaratne', 'image40.png', 'central', '630911234V', 'Kandy, Central Province', '1983-12-03', 1, 'all');
INSERT INTO `voting_user` VALUES (41, 'Dinesh', 'Jayawardena', 'image41.png', 'southern', '640012345V', 'Galle, Southern Province', '1982-12-03', 1, 'all');
INSERT INTO `voting_user` VALUES (42, 'Anuradi', 'Fernando', 'image42.png', 'northern', '650113456V', 'Vavuniya, Northern Province', '1981-12-03', 1, 'all');
INSERT INTO `voting_user` VALUES (43, 'Kasun', 'Fernando', 'image43.png', 'western', '660201234V', 'Colombo, Western Province', '1980-12-03', 1, 'all');
INSERT INTO `voting_user` VALUES (44, 'Malini', 'Silva', 'image44.png', 'central', '670302345V', 'Kandy, Central Province', '1979-12-03', 1, 'all');
INSERT INTO `voting_user` VALUES (45, 'Ravi', 'Perera', 'image45.png', 'southern', '680403456V', 'Matara, Southern Province', '1978-12-03', 1, 'all');
INSERT INTO `voting_user` VALUES (46, 'Chathurika', 'Gunathilaka', 'image46.png', 'central', '690504567V', 'Kandy, Central Province', '1977-12-03', 1, 'all');
INSERT INTO `voting_user` VALUES (47, 'Sampath', 'Bandara', 'image47.png', 'southern', '700605678V', 'Galle, Southern Province', '1976-12-03', 1, 'all');
INSERT INTO `voting_user` VALUES (48, 'Kumari', 'Ratnayake', 'image48.png', 'northern', '710706789V', 'Jaffna, Northern Province', '1975-12-03', 1, 'all');
INSERT INTO `voting_user` VALUES (49, 'Anura', 'Dissanayake', 'image49.png', 'eastern', '720807890V', 'Trincomalee, Eastern Province', '1974-12-03', 1, 'all');
INSERT INTO `voting_user` VALUES (50, 'Lakmini', 'Jayawardena', 'image50.png', 'western', '730910123V', 'Negombo, Western Province', '1973-12-03', 1, 'all');
INSERT INTO `voting_user` VALUES (51, 'Chamara', 'Fernando', 'image51.png', 'central', '741011234V', 'Kandy, Central Province', '1972-12-03', 1, 'all');
INSERT INTO `voting_user` VALUES (52, 'Sithara', 'Samaraweera', 'image52.png', 'southern', '751112345V', 'Galle, Southern Province', '1971-12-03', 1, 'all');
INSERT INTO `voting_user` VALUES (53, 'Lahiru', 'Wickramasinghe', 'image53.png', 'northern', '761213456V', 'Vavuniya, Northern Province', '1970-12-03', 1, 'all');
INSERT INTO `voting_user` VALUES (54, 'Saman', 'Fernando', 'image54.png', 'western', '770201234V', 'Colombo, Western Province', '1980-01-01', 1, 'all');
INSERT INTO `voting_user` VALUES (55, 'Chamari', 'Silva', 'image55.png', 'central', '780302345V', 'Kandy, Central Province', '1981-02-02', 1, 'all');
INSERT INTO `voting_user` VALUES (56, 'Kasun', 'Perera', 'image56.png', 'southern', '790403456V', 'Matara, Southern Province', '1982-03-03', 1, 'all');
INSERT INTO `voting_user` VALUES (57, 'Malini', 'Gunathilaka', 'image57.png', 'central', '800504567V', 'Kandy, Central Province', '1983-04-04', 1, 'all');
INSERT INTO `voting_user` VALUES (58, 'Ravi', 'Bandara', 'image58.png', 'southern', '810605678V', 'Galle, Southern Province', '1984-05-05', 1, 'all');
INSERT INTO `voting_user` VALUES (59, 'Kumari', 'Ratnayake', 'image59.png', 'northern', '820706789V', 'Jaffna, Northern Province', '1985-06-06', 1, 'all');
INSERT INTO `voting_user` VALUES (60, 'Anura', 'Dissanayake', 'image60.png', 'eastern', '830807890V', 'Trincomalee, Eastern Province', '1986-07-07', 1, 'all');
INSERT INTO `voting_user` VALUES (61, 'Lakmini', 'Jayawardena', 'image61.png', 'western', '840910123V', 'Colombo, Western Province', '1987-08-08', 1, 'all');
INSERT INTO `voting_user` VALUES (62, 'Chamara', 'Fernando', 'image62.png', 'central', '851011234V', 'Kandy, Central Province', '1988-09-09', 1, 'all');
INSERT INTO `voting_user` VALUES (63, 'Sithara', 'Samaraweera', 'image63.png', 'southern', '861112345V', 'Galle, Southern Province', '1989-10-10', 1, 'all');
INSERT INTO `voting_user` VALUES (64, 'Lahiru', 'Wickramasinghe', 'image64.png', 'northern', '871213456V', 'Jaffna, Northern Province', '1990-11-11', 1, 'all');
INSERT INTO `voting_user` VALUES (65, 'Pradeep', 'Rajapaksa', 'image65.png', 'western', '881314567V', 'Negombo, Western Province', '1991-12-12', 1, 'all');
INSERT INTO `voting_user` VALUES (66, 'Ishara', 'Fernando', 'image66.png', 'central', '891415678V', 'Kandy, Central Province', '1992-01-13', 1, 'all');
INSERT INTO `voting_user` VALUES (67, 'Kamal', 'Silva', 'image67.png', 'southern', '901516789V', 'Galle, Southern Province', '1993-02-14', 1, 'all');
INSERT INTO `voting_user` VALUES (68, 'Shanika', 'Gunathilaka', 'image68.png', 'central', '911617890V', 'Kandy, Central Province', '1994-03-15', 1, 'all');
INSERT INTO `voting_user` VALUES (69, 'Rukmal', 'Bandara', 'image69.png', 'southern', '921719012V', 'Matara, Southern Province', '1995-04-16', 1, 'all');
INSERT INTO `voting_user` VALUES (70, 'Saman', 'Ratnayake', 'image70.png', 'northern', '931820123V', 'Jaffna, Northern Province', '1996-05-17', 1, 'all');
INSERT INTO `voting_user` VALUES (71, 'Dilini', 'Dissanayake', 'image71.png', 'eastern', '941921234V', 'Trincomalee, Eastern Province', '1997-06-18', 1, 'all');
INSERT INTO `voting_user` VALUES (72, 'Kasun', 'Jayawardena', 'image72.png', 'western', '952022345V', 'Colombo, Western Province', '1998-07-19', 1, 'all');
INSERT INTO `voting_user` VALUES (73, 'Malini', 'Fernando', 'image73.png', 'central', '962123456V', 'Kandy, Central Province', '1999-08-20', 1, 'all');
INSERT INTO `voting_user` VALUES (74, 'Ravi', 'Samaraweera', 'image74.png', 'southern', '972224567V', 'Galle, Southern Province', '2000-09-21', 1, 'all');
INSERT INTO `voting_user` VALUES (75, 'Nimal', 'Fernando', 'image75.png', 'western', '982325678V', 'Colombo, Western Province', '1973-09-02', 1, 'all');
INSERT INTO `voting_user` VALUES (76, 'Chamari', 'Perera', 'image76.png', 'central', '992426789V', 'Kandy, Central Province', '1991-08-22', 1, 'all');
INSERT INTO `voting_user` VALUES (77, 'Kasun', 'Gunathilaka', 'image77.png', 'southern', '1002527890V', 'Matara, Southern Province', '1999-03-13', 1, 'all');
INSERT INTO `voting_user` VALUES (78, 'Malini', 'Wickramasinghe', 'image78.png', 'central', '1012629012V', 'Kandy, Central Province', '1983-01-24', 1, 'all');
INSERT INTO `voting_user` VALUES (79, 'Ravi', 'Bandara', 'image79.png', 'southern', '1022730123V', 'Galle, Southern Province', '1981-09-23', 1, 'all');
INSERT INTO `voting_user` VALUES (80, 'Kumari', 'Ratnayake', 'image80.png', 'northern', '1032831234V', 'Jaffna, Northern Province', '1989-06-14', 1, 'all');
INSERT INTO `voting_user` VALUES (81, 'Anura', 'Dissanayake', 'image81.png', 'eastern', '1042932345V', 'Trincomalee, Eastern Province', '1998-01-29', 1, 'all');
INSERT INTO `voting_user` VALUES (82, 'Lakmini', 'Jayawardena', 'image82.png', 'western', '1053033456V', 'Colombo, Western Province', '1984-01-18', 1, 'all');
INSERT INTO `voting_user` VALUES (83, 'Chamara', 'Fernando', 'image83.png', 'central', '1063134567V', 'Kandy, Central Province', '1989-12-30', 1, 'all');
INSERT INTO `voting_user` VALUES (84, 'Sithara', 'Samaraweera', 'image84.png', 'southern', '1073235678V', 'Galle, Southern Province', '1993-11-04', 1, 'all');
INSERT INTO `voting_user` VALUES (85, 'Lahiru', 'Wickramasinghe', 'image85.png', 'northern', '1083336789V', 'Jaffna, Northern Province', '1995-03-25', 1, 'all');
INSERT INTO `voting_user` VALUES (86, 'Pradeep', 'Rajapaksa', 'image86.png', 'western', '1093437890V', 'Negombo, Western Province', '1990-08-13', 1, 'all');
INSERT INTO `voting_user` VALUES (87, 'Ishara', 'Fernando', 'image87.png', 'central', '1103539012V', 'Kandy, Central Province', '1997-05-24', 1, 'all');
INSERT INTO `voting_user` VALUES (88, 'Kamal', 'Silva', 'image88.png', 'southern', '1113640123V', 'Galle, Southern Province', '1977-02-17', 1, 'all');
INSERT INTO `voting_user` VALUES (89, 'Shanika', 'Gunathilaka', 'image89.png', 'central', '1123741234V', 'Kandy, Central Province', '1991-06-17', 1, 'all');
INSERT INTO `voting_user` VALUES (90, 'Rukmal', 'Bandara', 'image90.png', 'southern', '1133842345V', 'Matara, Southern Province', '1987-12-01', 1, 'all');
INSERT INTO `voting_user` VALUES (91, 'Saman', 'Ratnayake', 'image91.png', 'northern', '1143943456V', 'Jaffna, Northern Province', '1995-03-13', 1, 'all');
INSERT INTO `voting_user` VALUES (92, 'Dilini', 'Dissanayake', 'image92.png', 'eastern', '1154044567V', 'Trincomalee, Eastern Province', '1974-03-28', 1, 'all');
INSERT INTO `voting_user` VALUES (93, 'Kasun', 'Jayawardena', 'image93.png', 'western', '1164145678V', 'Colombo, Western Province', '1983-08-06', 1, 'all');
INSERT INTO `voting_user` VALUES (94, 'Malini', 'Fernando', 'image94.png', 'central', '1174246789V', 'Kandy, Central Province', '1991-04-09', 1, 'all');
INSERT INTO `voting_user` VALUES (95, 'Ravi', 'Samaraweera', 'image95.png', 'southern', '1184347890V', 'Galle, Southern Province', '2001-07-23', 1, 'all');
INSERT INTO `voting_user` VALUES (96, 'Chathura', 'Fernando', 'image96.png', 'western', '1194458901V', 'Colombo, Western Province', '2000-10-26', 1, 'all');
INSERT INTO `voting_user` VALUES (97, 'Hemal', 'Perera', 'image97.png', 'central', '1204569012V', 'Kandy, Central Province', '1979-07-20', 1, 'all');
INSERT INTO `voting_user` VALUES (98, 'Anusha', 'Gunathilaka', 'image98.png', 'southern', '1214670123V', 'Matara, Southern Province', '1993-04-08', 1, 'all');
INSERT INTO `voting_user` VALUES (99, 'Dilshan', 'Wickramasinghe', 'image99.png', 'central', '1224781234V', 'Kandy, Central Province', '1989-09-13', 1, 'all');
INSERT INTO `voting_user` VALUES (100, 'Shalini', 'Bandara', 'image100.png', 'southern', '1234892345V', 'Galle, Southern Province', '1998-09-15', 1, 'all');
INSERT INTO `voting_user` VALUES (101, 'Sunil', 'Ratnayake', 'image101.png', 'northern', '1244903456V', 'Jaffna, Northern Province', '1986-06-06', 1, 'all');
INSERT INTO `voting_user` VALUES (102, 'Rukmal', 'Dissanayake', 'image102.png', 'eastern', '1255014567V', 'Trincomalee, Eastern Province', '2000-01-09', 1, 'all');
INSERT INTO `voting_user` VALUES (103, 'Lakmini', 'Jayawardena', 'image103.png', 'western', '1265125678V', 'Colombo, Western Province', '2002-10-30', 1, 'all');
INSERT INTO `voting_user` VALUES (104, 'Chamara', 'Fernando', 'image104.png', 'central', '1275236789V', 'Kandy, Central Province', '1976-02-02', 1, 'all');
INSERT INTO `voting_user` VALUES (105, 'Sithara', 'Samaraweera', 'image105.png', 'southern', '1285347890V', 'Galle, Southern Province', '2003-12-11', 1, 'all');
INSERT INTO `voting_user` VALUES (106, 'Lahiru', 'Wickramasinghe', 'image106.png', 'northern', '1295458901V', 'Jaffna, Northern Province', '1985-06-21', 1, 'all');
INSERT INTO `voting_user` VALUES (107, 'Pradeep', 'Rajapaksa', 'image107.png', 'western', '1305569012V', 'Negombo, Western Province', '1979-07-06', 1, 'all');
INSERT INTO `voting_user` VALUES (108, 'Ishara', 'Fernando', 'image108.png', 'central', '1315670123V', 'Kandy, Central Province', '1971-02-23', 1, 'all');
INSERT INTO `voting_user` VALUES (109, 'Kamal', 'Silva', 'image109.png', 'southern', '1325781234V', 'Galle, Southern Province', '1981-03-10', 1, 'all');
INSERT INTO `voting_user` VALUES (110, 'Shanika', 'Gunathilaka', 'image110.png', 'northern', '1335892345V', 'Jaffna, Northern Province', '1988-07-04', 1, 'all');
INSERT INTO `voting_user` VALUES (111, 'Rukmal', 'Bandara', 'image111.png', 'eastern', '1346003456V', 'Trincomalee, Eastern Province', '1994-12-21', 1, 'all');
INSERT INTO `voting_user` VALUES (112, 'Saman', 'Ratnayake', 'image112.png', 'western', '1356114567V', 'Negombo, Western Province', '1971-05-08', 1, 'all');
INSERT INTO `voting_user` VALUES (113, 'Dilini', 'Dissanayake', 'image113.png', 'central', '1366225678V', 'Kandy, Central Province', '2003-10-25', 1, 'all');
INSERT INTO `voting_user` VALUES (114, 'Kasun', 'Jayawardena', 'image114.png', 'southern', '1376336789V', 'Matara, Southern Province', '1999-01-18', 1, 'all');
INSERT INTO `voting_user` VALUES (115, 'Malini', 'Fernando', 'image115.png', 'northern', '1386447890V', 'Jaffna, Northern Province', '1979-10-17', 1, 'Kothalawala');
INSERT INTO `voting_user` VALUES (116, 'Ravi', 'Samaraweera', 'image116.png', 'eastern', '1396558901V', 'Trincomalee, Eastern Province', '1999-10-26', 1, 'all');

SET FOREIGN_KEY_CHECKS = 1;
