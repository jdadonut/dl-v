package util
import obj {Services}
pub fn service_api_limit(service Services) {
	return match service {
		else {1000}  // fix this later
	}
}
pub fn service_api_fmt_link(args Args, cpid int, limit int) {
	return match args.service {
		.safebooru {
			'${this_or_default(args.uri, "https://safebooru.org/")}index.php?page=dapi&s=post&q=index&tags=${args.tags.join("+")}&limit=$limit&pid=$cpid'
		}
		else {"not implemented"}
	}
}