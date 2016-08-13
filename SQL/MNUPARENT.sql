/*
Navicat SQLite Data Transfer

Source Server         : treeView
Source Server Version : 31202
Source Host           : :0

Target Server Type    : SQLite
Target Server Version : 31202
File Encoding         : 65001

Date: 2016-08-13 14:16:51
*/

PRAGMA foreign_keys = OFF;

-- ----------------------------
-- Table structure for MNUPARENT
-- ----------------------------
DROP TABLE IF EXISTS "main"."MNUPARENT";
CREATE TABLE "MNUPARENT" (
"MENUPARVAL"  INTEGER NOT NULL,
"MAINMNU"  TEXT,
"STATUS"  TEXT,
PRIMARY KEY ("MENUPARVAL")
);

-- ----------------------------
-- Records of MNUPARENT
-- ----------------------------
INSERT INTO "main"."MNUPARENT" VALUES (1, 'Finance', 'Y');
INSERT INTO "main"."MNUPARENT" VALUES (2, 'Invetory', 'Y');
