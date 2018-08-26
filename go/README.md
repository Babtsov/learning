# Go Notes
entry to each go lang should have main.main.
## Go packages
packages are searched in particular paths but are also controlled by [GOPATH](https://golang.org/cmd/go/#hdr-GOPATH_environment_variable).   
To view the value of GOPATH: `go env GOPATH`   
One seach path is: `/usr/lib/golang/src`  
this is because:
```
[vagrant@localhost go_practice]$ go env GOROOT
/usr/lib/golang
```

go packages explanation [src](https://thenewstack.io/understanding-golang-packages/)  
go standard lib packages: https://golang.org/pkg/  

