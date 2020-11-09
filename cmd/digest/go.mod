module dep_digest

go 1.15

replace github.com/golang/dep/gps/verify => ./../../pkg/verify

require (
	github.com/davecgh/go-spew v1.1.1
	github.com/golang/dep/gps/verify v0.0.0-00010101000000-000000000000
)
