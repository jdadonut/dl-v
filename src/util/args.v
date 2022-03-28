module util

struct Args {
	// debug
	simulate bool // onyl grab links and print to screen, do not download. auto: false
	minLogLevel logLevel
	// general
	service services // what service api type to use. auto: safebooru
	uri string // uri to use, not required. auto: service

	// rating levels
	safe bool
	questionable bool
	explicit bool
}