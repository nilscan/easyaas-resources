package easyaas.ephemaralnamespaces

test_valid_name {
  record := {
    "request": {
      "operation": "CREATE",
      "object": {
        "kind": "EphemeralNamespace",
        "spec": {
          "expiresAt": "2023-11-05T10:00:00Z"
        }
      }
    }
  }

  res := deny with input as record
  count(res) == 0
}

test_invalid_name {
  record := {
    "request": {
      "operation": "CREATE",
      "object": {
        "kind": "EphemeralNamespace",
        "spec": {
          "expiresAt": "invalid_date"
        }
      }
    }
  }

  res := deny with input as record
  count(res) > 0
}
