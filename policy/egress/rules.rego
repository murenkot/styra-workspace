package policy.egress
import data.libraries.my_lib.helpers.are_equal

# deny any egress by default
default allow = false

x := 7

# allow requests to example-app k8s service
allow {
	# input.attributes.request.http.method == "GET"
# 	contains(input.attributes.request.http.host, "example-app")
	are_equal(input.attributes.request.http.host, "example-app")
}

# uncomment to allow requests to httpbin.org
# allow {
#   input.attributes.request.http.method == "GET"
#   input.attributes.request.http.host == "httpbin.org"
# }


