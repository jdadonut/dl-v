module util

import time
import obj

pub struct Logger {
	min_log_level obj.LogLevel
}

pub fn (_log Logger) can(level obj.LogLevel) bool {
	// does v do enum int comparison? (i hope so otherwise this causes compiler error)
	return int(level) >= int(_log.min_log_level)
}

pub fn (_log Logger) fmt(msg string, level obj.LogLevel) string {
	return '[${_log.str_of(level)}][$_log.stamp()]: $msg'
}

pub fn (_log Logger) str_of(level obj.LogLevel) string {
	return ['DBG', 'NFO', 'LOG', 'WRN', 'ERR', 'FTL'][int(level)]
}

pub fn (_log Logger) stamp() string {
	return time.now().format()
}

pub fn (_log Logger) debug(msg string) {
	if _log.can(obj.LogLevel.debug) {
		println(_log.fmt(msg, obj.LogLevel.debug))
	}
}

pub fn (_log Logger) info(msg string) {
	if _log.can(obj.LogLevel.information) {
		println(_log.fmt(msg, obj.LogLevel.information))
	}
}

pub fn (_log Logger) log(msg string) {
	if _log.can(obj.LogLevel.log) {
		println(_log.fmt(msg, obj.LogLevel.log))
	}
}

pub fn (_log Logger) warn(msg string) {
	if _log.can(obj.LogLevel.warn) {
		println(_log.fmt(msg, obj.LogLevel.warn))
	}
}

pub fn (_log Logger) error(msg string) {
	if _log.can(obj.LogLevel.error) {
		println(_log.fmt(msg, obj.LogLevel.error))
	}
}

pub fn (_log Logger) fatal(msg string) {
	if _log.can(obj.LogLevel.fatal) {
		println(_log.fmt(msg, obj.LogLevel.fatal))
	}
}
