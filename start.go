package main

import (
	"fmt"
	"os/exec"
)

func main() {

	for {
		a := exec.Command("ps -ef | grep minecraft_server.1.12.1 | grep -v grep | wc -l")
		fmt.Println(a)
	}

}
