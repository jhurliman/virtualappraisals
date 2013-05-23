-- 
-- Table structure for table `listings`
-- 

CREATE TABLE `listings` (
  `listingid` int(10) unsigned NOT NULL auto_increment,
  `parcelid` varchar(36) NOT NULL,
  `ownerid` varchar(36) NOT NULL,
  `price` int(10) unsigned NOT NULL,
  `area` int(10) unsigned NOT NULL,
  `globalx` float NOT NULL,
  `globaly` float NOT NULL,
  `simname` varchar(36) NOT NULL,
  `picture` tinyint(1) NOT NULL,
  `prims` int(11) NOT NULL,
  `timestamp` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`listingid`),
  UNIQUE KEY `parcelid_index` (`parcelid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=2861 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `sales`
-- 

CREATE TABLE `sales` (
  `saleid` int(10) unsigned NOT NULL auto_increment,
  `timestamp` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `sellerid` varchar(36) NOT NULL,
  `simname` varchar(36) NOT NULL,
  `dwell` float NOT NULL,
  `price` int(10) unsigned NOT NULL,
  `area` int(10) unsigned NOT NULL,
  `landtype` tinyint(4) NOT NULL,
  `watertype` tinyint(4) NOT NULL,
  `mature` tinyint(1) NOT NULL,
  `picture` tinyint(1) NOT NULL,
  `prims` int(11) NOT NULL,
  `heightrange` float NOT NULL,
  `shapedev` int(11) NOT NULL,
  PRIMARY KEY  (`saleid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=914 ;

-- --------------------------------------------------------

-- 
-- Table structure for table `sims`
-- 

CREATE TABLE `sims` (
  `simid` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(36) default NULL,
  `handle` bigint(20) default NULL,
  `simstatus` int(10) unsigned NOT NULL default '0',
  `snow` tinyint(1) NOT NULL,
  PRIMARY KEY  (`simid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=6466 ;
