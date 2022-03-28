module main
import util {Logger, Args, service_api_fmt_link, service_api_limit, service_api_pg_increment}
import obj {LogLevel, Services}
fn main() {
	args := Args{
		simulate: false
		min_log_level: .debug // for now
		service: .safebooru
		uri: ""
		count: 300
		tags: ["cat_ears", "tail"]

		safe: true
		questionable: true
		explicit: true

	} // get this on its own sometime soon
	pid := 0

	for left := args.count; i > 0; i -= service_api_limit(args.service) {
		if left < service_api_limit(args.service) {
			// use left
			link := service_api_fmt_link(args, pid, left)
			pid += service_api_pg_increment(args.service)
		} else {
			// use service_api_limit(args.service)
			link := service_api_fmt_link(args, pid, left)
			pid += service_api_pg_increment(args.service)
		}
		// link will be defined NOW
		
	}
}

