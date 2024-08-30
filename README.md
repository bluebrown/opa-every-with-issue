# OPA every-with issue

The below command is not expected to fail with this error. It is not clear
why this happens. Attempts to reproduce this in a more simple way have failed.

```bash
opa eval -b .  'data.org'
{
  "errors": [
    {
      "message": "var method is unsafe",
      "code": "rego_unsafe_var_error",
      "location": {
        "file": "router_test.rego",
        "row": 5,
        "col": 3
      }
    }
  ]
}
