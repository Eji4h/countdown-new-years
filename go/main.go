package main

import (
	"fmt"
	"time"
)

func main() {
	for {
		currentTime := time.Now()
		fmt.Println("The time is", currentTime)
		isNewYear := currentTime.Year() == 2023
		if isNewYear {
			fmt.Println("Happy New Year!")
			break
		}
		time.Sleep(time.Second)
	}
}
