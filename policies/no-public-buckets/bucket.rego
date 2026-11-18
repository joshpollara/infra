package main

import rego.v1

deny contains msg if {
	rc := input.resource_changes[_]
	rc.change.after.input.acl == "public-read"
	msg := sprintf("%s: a public-read ACL is not allowed", [rc.address])
}
