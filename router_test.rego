package test.router

test_allow if {
	every method in {"oidc", "mtls"} {
		data.org.router.allow with data.org.ingress.auth_method as method
			with data.org.authn[method].allow as true
	}
}
