package main

import (
	"flag"
	"fmt"
	"runtime"
)

func main() {
	versionFlag := flag.Bool("version", false, "Print version information and quit")
	flag.Parse()
	if *versionFlag {
		printVersion()
	}
}

var (
	Version   string
	GitBranch string
	GitCommit string
	BuildUser string
	BuildDate string
)

func printVersion() {
	fmt.Printf(`version %s
build user: %s
build date: %s
go version: %s
platform: %s/%s
git branch: %s
git commit: %s
`, Version, BuildUser, BuildDate, runtime.Version(), runtime.GOOS, runtime.GOARCH, GitBranch, GitCommit)
}
