module util
import time
import obj
pub struct Logger {
	minLogLevel logLevel
}
pub fn (_log Logger) can (level logLevel) bool {
	// does v do enum int comparison? (i hope so otherwise this causes compiler error)
	return level >= _log.minLogLevel
}

pub fn (_log Logger) fmt (msg string, level logLevel) string {
	return '[${_log.str(level)}][${_log.stamp()}]: $msg'
}

pub fn (_log Logger) str (level logLevel) string {
	return ["DBG","NFO","LOG","WRN","ERR","FTL"][level as int]
}

pub fn (_log Logger) stamp () string {
	return time.now().format()
}

pub fn (_log Logger) debug (msg string) {
	if (_log.can(logLevel.DEBUG)) {
		println(_log.fmt(msg, logLevel.DEBUG))
	}
}
pub fn (_log Logger) info (msg string) {
	if (_log.can(logLevel.INFORMATION)) {
		println(_log.fmt(msg, logLevel.INFORMATION))
	}
}
pub fn (_log Logger) log (msg string) {
	if (_log.can(logLevel.LOG)) {
		println(_log.fmt(msg, logLevel.LOG))
	}
}
pub fn (_log Logger) warn (msg string) {
	if (_log.can(logLevel.WARN)) {
		println(_log.fmt(msg, logLevel.WARN))
	}
}
pub fn (_log Logger) error (msg string) {
	if (_log.can(logLevel.ERROR)) {
		println(_log.fmt(msg, logLevel.ERROR))
	}
}
pub fn (_log Logger) fatal (msg string) {
	if (_log.can(logLevel.FATAL)) {
		println(_log.fmt(msg, logLevel.FATAL))
	}
}