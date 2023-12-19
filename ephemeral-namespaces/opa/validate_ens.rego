package easyaas.ephemeralnamespaces

operations := {"CREATE", "UPDATE"}

deny[msg] {
	input.request.object.kind == "EphemeralNamespace"
	operations[input.request.operation]
	date := input.request.object.spec.expiresAt

	not regex.match("\\d{4}-[01]\\d-[0-3]\\dT[0-2]\\d:[0-5]\\d:[0-5]\\d\\.\\d+([+-][0-2]\\d:[0-5]\\d|Z)", date)

	msg := sprintf("invalid date %q, should be in ISO8601 format", [date])
}
