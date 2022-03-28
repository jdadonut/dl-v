module util

import obj {LogLevel, Services}

pub struct Args {
	// debug
	simulate      bool     // only grab links and print to screen, do not download. auto: false
	min_log_level LogLevel
	// general
	service 	  Services // what service api type to use. auto: safebooru
	uri           string   // uri to use, not required. auto: service
	count		  i64	   // amount to download
	tags		  []string // tags to use
	// rating levels
	safe          bool     // true
	questionable  bool     // true
	explicit      bool     // false
}
