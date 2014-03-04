# Dump of table Room
# ------------------------------------------------------------

DROP TABLE IF EXISTS `room`;

CREATE TABLE `room` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `capacity` int(11) unsigned NOT NULL,
  `building` varchar(5) NOT NULL DEFAULT '',
  `floor` int(11) unsigned NOT NULL,
  `number` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table roomfacility
# ------------------------------------------------------------

DROP TABLE IF EXISTS `roomfacility`;

CREATE TABLE `roomfacility` (
  `room` int(11) unsigned NOT NULL,
  `facility` int(11) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table department
# ------------------------------------------------------------

DROP TABLE IF EXISTS `department`;

CREATE TABLE `department` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `faculty` varchar(64) DEFAULT NULL,
  `name` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table person
# ------------------------------------------------------------

DROP TABLE IF EXISTS `person`;

CREATE TABLE `person` (
  `netid` varchar(12) NOT NULL DEFAULT '',
  `firstname` varchar(64) DEFAULT NULL,
  `surname` varchar(64) DEFAULT NULL,
  `locale` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`netid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table Program
# ------------------------------------------------------------

DROP TABLE IF EXISTS `program`;

CREATE TABLE `program` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(126) NOT NULL DEFAULT '',
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table Course
# ------------------------------------------------------------

DROP TABLE IF EXISTS `course`;

CREATE TABLE `course` (
  `course-code` varchar(32) NOT NULL DEFAULT '',
  `title` varchar(126) DEFAULT NULL,
  `description` text,
  `titular-id` varchar(12) DEFAULT NULL,
  `department` int(11) unsigned NOT NULL,
  `grade` int(11) DEFAULT NULL,
  PRIMARY KEY (`course-code`),
  KEY `titular-id` (`titular-id`),
  KEY `department` (`department`),
  CONSTRAINT `course_ibfk_2` FOREIGN KEY (`department`) REFERENCES `department` (`id`),
  CONSTRAINT `course_ibfk_1` FOREIGN KEY (`titular-id`) REFERENCES `person` (`netid`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table CourseActivity
# ------------------------------------------------------------

DROP TABLE IF EXISTS `courseactivity`;

CREATE TABLE `courseactivity` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `course-code` varchar(32) NOT NULL DEFAULT '',
  `type` int(11) unsigned NOT NULL,
  `semester` int(11) unsigned NOT NULL,
  `date` int(11) DEFAULT NULL,
  `contact-time-hours` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `course-code` (`course-code`),
  CONSTRAINT `courseactivity_ibfk_1` FOREIGN KEY (`course-code`) REFERENCES `course` (`course-code`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table CourseEnrollment
# ------------------------------------------------------------

DROP TABLE IF EXISTS `courseenrollment`;

CREATE TABLE `CourseEnrollment` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `course-code` varchar(32) DEFAULT NULL,
  `netid` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `course-code` (`course-code`),
  KEY `netid` (`netid`),
  CONSTRAINT `courseenrollment_ibfk_2` FOREIGN KEY (`netid`) REFERENCES `person` (`netid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `courseenrollment_ibfk_1` FOREIGN KEY (`course-code`) REFERENCES `course` (`course-code`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table CourseInstructor
# ------------------------------------------------------------

DROP TABLE IF EXISTS `courseinstructor`;

CREATE TABLE `courseinstructor` (
  `course-activity` int(11) unsigned DEFAULT NULL,
  `netid` varchar(12) DEFAULT NULL,
  KEY `netid` (`netid`,`course-activity`),
  KEY `course-activity` (`course-activity`),
  CONSTRAINT `courseinstructor_ibfk_2` FOREIGN KEY (`netid`) REFERENCES `person` (`netid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `courseinstructor_ibfk_1` FOREIGN KEY (`course-activity`) REFERENCES `courseactivity` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table ProgramChoiceCourse
# ------------------------------------------------------------

DROP TABLE IF EXISTS `programchoicecourse`;

CREATE TABLE `programchoicecourse` (
  `program` int(11) unsigned NOT NULL,
  `course-code` varchar(32) NOT NULL DEFAULT '',
  KEY `program` (`program`),
  KEY `course-code` (`course-code`),
  CONSTRAINT `programchoicecourse_ibfk_2` FOREIGN KEY (`course-code`) REFERENCES `course` (`course-code`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `programchoicecourse_ibfk_1` FOREIGN KEY (`program`) REFERENCES `program` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table ProgramMandatoryCourse
# ------------------------------------------------------------

DROP TABLE IF EXISTS `programmandatorycourse`;

CREATE TABLE `programmandatorycourse` (
  `program` int(11) unsigned NOT NULL,
  `course-code` varchar(32) NOT NULL DEFAULT '',
  KEY `program` (`program`),
  KEY `course-code` (`course-code`),
  CONSTRAINT `programmandatorycourse_ibfk_2` FOREIGN KEY (`course-code`) REFERENCES `course` (`course-code`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `programmandatorycourse_ibfk_1` FOREIGN KEY (`program`) REFERENCES `program` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table Subscription
# ------------------------------------------------------------

DROP TABLE IF EXISTS `subscription`;

CREATE TABLE `subscription` (
  `course-code` varchar(32) NOT NULL DEFAULT '',
  `netid` varchar(12) NOT NULL DEFAULT '',
  KEY `course-code` (`course-code`),
  KEY `netid` (`netid`),
  CONSTRAINT `subscription_ibfk_2` FOREIGN KEY (`netid`) REFERENCES `person` (`netid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `subscription_ibfk_1` FOREIGN KEY (`course-code`) REFERENCES `course` (`course-code`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
