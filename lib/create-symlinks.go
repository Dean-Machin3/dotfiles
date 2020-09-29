package main

import (
	"example.com/symlink"
	"fmt"
)

func main() {
	fmt.Println("Creating symlinks")
	files := [...]string{".bash_profile", ".dotfile-scripts", ".gitconfig", ".vimrc"}
	for _, fileName := range files {
		symlink.Symlink(fileName)
	}
}
