package main

import (
	"fmt"
	import "github.com/codeskyblue/go-sh"
)

func main() {

	for {
		
		a := sh.Command("ps -ef | grep minecraft_server.1.12.1 | grep -v grep | wc -l").Output()
		a := sh.Command(ps 
		fmt.Println(a)
	}

}
