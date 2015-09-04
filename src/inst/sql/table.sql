--
-- Table structure for table `engine_log`
--

CREATE TABLE IF NOT EXISTS `engine_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `species` char(255) DEFAULT NULL,
  `algorithm` char(255) DEFAULT NULL,
  `runtime` int(11) DEFAULT NULL,
  `level` char(255) DEFAULT NULL,
  `message` text,
  `datetime` char(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `species` (`species`,`algorithm`,`runtime`,`level`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `engine_progress`
--

CREATE TABLE IF NOT EXISTS `engine_progress` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `species` char(255) DEFAULT NULL,
  `algorithm` char(255) DEFAULT NULL,
  `runtime` int(11) DEFAULT NULL,
  `mark` int(11) DEFAULT NULL,
  `elapsed_time` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `species` (`species`,`algorithm`,`runtime`,`mark`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13401 ;

-- --------------------------------------------------------

--
-- Table structure for table `shift_analysis`
--

CREATE TABLE IF NOT EXISTS `shift_analysis` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `species` char(255) NOT NULL,
  `algorithm` char(255) NOT NULL,
  `environment` char(255) NOT NULL,
  `var_name` char(255) NOT NULL,
  `var_value` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `species` (`species`),
  KEY `algorithm` (`algorithm`),
  KEY `environment` (`environment`),
  KEY `var_name` (`var_name`),
  KEY `species_2` (`species`),
  KEY `algorithm_2` (`algorithm`),
  KEY `environment_2` (`environment`),
  KEY `var_name_2` (`var_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=65259 ;
