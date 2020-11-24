package main

import (
	"dotfiles/pkg/symm"
	"fmt"
)

func main() {
	fmt.Println("Creating symlinks")
	files := [...]string{".bash_profile", ".dotfile-scripts", ".gitconfig", ".vimrc"}
	for _, fileName := range files {
		symm.Symlink(fileName)
	}
}
