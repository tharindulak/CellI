import ballerina/http;

# A service representing a network-accessible API
# bound to port `9090`.
@display {
	label: "T1",
	id: "T1-56db1926-1b56-430c-b6cb-0a0bab3cf436"
}
service / on new http:Listener(9090) {

    # A resource for generating greetings
    # + name - the input string name
    # + return - string name with hello message or error
    resource function get greeting(string name) returns string|error {
        // Send a response back to the caller.
        if name is "" {
            return error("name should not be empty!");
        }
        return "Hello, " + name;
    }
}
