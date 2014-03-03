# Dump of table Course
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Course`;

CREATE TABLE `Course` (
  `course-code` varchar(32) NOT NULL DEFAULT '',
  `title` varchar(126) DEFAULT NULL,
  `description` text,
  `titular-id` varchar(12) DEFAULT NULL,
  `department` int(11) unsigned NOT NULL,
  `grade` int(11) DEFAULT NULL,
  PRIMARY KEY (`course-code`),
  KEY `titular-id` (`titular-id`),
  KEY `department` (`department`),
  CONSTRAINT `course_ibfk_2` FOREIGN KEY (`department`) REFERENCES `Department` (`id`),
  CONSTRAINT `course_ibfk_1` FOREIGN KEY (`titular-id`) REFERENCES `Person` (`netid`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table CourseActivity
# ------------------------------------------------------------

DROP TABLE IF EXISTS `CourseActivity`;

CREATE TABLE `CourseActivity` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `course-code` varchar(32) NOT NULL DEFAULT '',
  `type` int(11) unsigned NOT NULL,
  `semester` int(11) unsigned NOT NULL,
  `date` int(11) DEFAULT NULL,
  `contact-time-hours` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `course-code` (`course-code`),
  CONSTRAINT `courseactivity_ibfk_1` FOREIGN KEY (`course-code`) REFERENCES `Course` (`course-code`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table CourseEnrollment
# ------------------------------------------------------------

DROP TABLE IF EXISTS `CourseEnrollment`;

CREATE TABLE `CourseEnrollment` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `course-code` varchar(32) DEFAULT NULL,
  `netid` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `course-code` (`course-code`),
  KEY `netid` (`netid`),
  CONSTRAINT `courseenrollment_ibfk_2` FOREIGN KEY (`netid`) REFERENCES `Person` (`netid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `courseenrollment_ibfk_1` FOREIGN KEY (`course-code`) REFERENCES `Course` (`course-code`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table CourseInstructor
# ------------------------------------------------------------

DROP TABLE IF EXISTS `CourseInstructor`;

CREATE TABLE `CourseInstructor` (
  `course-activity` int(11) unsigned DEFAULT NULL,
  `netid` varchar(12) DEFAULT NULL,
  KEY `netid` (`netid`,`course-activity`),
  KEY `course-activity` (`course-activity`),
  CONSTRAINT `courseinstructor_ibfk_2` FOREIGN KEY (`netid`) REFERENCES `Person` (`netid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `courseinstructor_ibfk_1` FOREIGN KEY (`course-activity`) REFERENCES `CourseActivity` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table Department
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Department`;

CREATE TABLE `Department` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `faculty` varchar(64) DEFAULT NULL,
  `name` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table Person
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Person`;

CREATE TABLE `Person` (
  `netid` varchar(12) NOT NULL DEFAULT '',
  `firstname` varchar(64) DEFAULT NULL,
  `surname` varchar(64) DEFAULT NULL,
  `locale` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`netid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table Program
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Program`;

CREATE TABLE `Program` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(126) NOT NULL DEFAULT '',
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table ProgramChoiceCourse
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ProgramChoiceCourse`;

CREATE TABLE `ProgramChoiceCourse` (
  `program` int(11) unsigned NOT NULL,
  `course-code` varchar(32) NOT NULL DEFAULT '',
  KEY `program` (`program`),
  KEY `course-code` (`course-code`),
  CONSTRAINT `programchoicecourse_ibfk_2` FOREIGN KEY (`course-code`) REFERENCES `Course` (`course-code`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `programchoicecourse_ibfk_1` FOREIGN KEY (`program`) REFERENCES `Program` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table ProgramMandatoryCourse
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ProgramMandatoryCourse`;

CREATE TABLE `ProgramMandatoryCourse` (
  `program` int(11) unsigned NOT NULL,
  `course-code` varchar(32) NOT NULL DEFAULT '',
  KEY `program` (`program`),
  KEY `course-code` (`course-code`),
  CONSTRAINT `programmandatorycourse_ibfk_2` FOREIGN KEY (`course-code`) REFERENCES `Course` (`course-code`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `programmandatorycourse_ibfk_1` FOREIGN KEY (`program`) REFERENCES `Program` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table Room
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Room`;

CREATE TABLE `Room` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `capacity` int(11) unsigned NOT NULL,
  `building` varchar(5) NOT NULL DEFAULT '',
  `floor` int(11) unsigned NOT NULL,
  `number` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table RoomFacility
# ------------------------------------------------------------

DROP TABLE IF EXISTS `RoomFacility`;

CREATE TABLE `RoomFacility` (
  `room` int(11) unsigned NOT NULL,
  `facility` int(11) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table Subscription
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Subscription`;

CREATE TABLE `Subscription` (
  `course-code` varchar(32) NOT NULL DEFAULT '',
  `netid` varchar(12) NOT NULL DEFAULT '',
  KEY `course-code` (`course-code`),
  KEY `netid` (`netid`),
  CONSTRAINT `subscription_ibfk_2` FOREIGN KEY (`netid`) REFERENCES `Person` (`netid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `subscription_ibfk_1` FOREIGN KEY (`course-code`) REFERENCES `Course` (`course-code`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
