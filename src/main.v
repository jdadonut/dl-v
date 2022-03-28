module main
import util
import obj
fn main() {
	l := Logger {minLogLevel: logLevel.INFORMATION}
	l.debug("debug")
	l.info("information")
	l.log("log")
	l.warn("warn")
	l.error("error")
	l.fatal("fatal")
}

