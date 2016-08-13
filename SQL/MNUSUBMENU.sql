/*
Navicat SQLite Data Transfer

Source Server         : treeView
Source Server Version : 31202
Source Host           : :0

Target Server Type    : SQLite
Target Server Version : 31202
File Encoding         : 65001

Date: 2016-08-13 14:16:59
*/

PRAGMA foreign_keys = OFF;

-- ----------------------------
-- Table structure for MNUSUBMENU
-- ----------------------------
DROP TABLE IF EXISTS "main"."MNUSUBMENU";
CREATE TABLE "MNUSUBMENU" (
"MNUSUBMENU"  INTEGER NOT NULL,
"MENUPARVAL"  INTEGER,
"FRM_CODE"  TEXT,
"FRM_NAME"  TEXT,
"STATUS"  TEXT,
PRIMARY KEY ("MNUSUBMENU")
);

-- ----------------------------
-- Records of MNUSUBMENU
-- ----------------------------
INSERT INTO "main"."MNUSUBMENU" VALUES (10, 1, null, 'Child_Finance', 'Y');
INSERT INTO "main"."MNUSUBMENU" VALUES (20, 1, null, 'Accounting', 'Y');
INSERT INTO "main"."MNUSUBMENU" VALUES (30, 20, null, 'Audit', 'Y');
INSERT INTO "main"."MNUSUBMENU" VALUES (40, 30, null, 'Acc. Standards', 'Y');
