package symm

import (
	"fmt"
	"os"
	"path/filepath"
)

//Symlink generates a symlink from the root user dir to the dotfile
func Symlink(fileName string) {
	path, err := os.Getwd()
	if err != nil {
		fmt.Println(err)
	}
	user := os.Getenv("USER")
	parent := filepath.Dir(path)
	//mac specific
	filePath := fmt.Sprintf("/Users/%v", user)
	targetPath := filepath.Join(parent, fileName)
	fmt.Println(targetPath)
	fmt.Println(filePath)

	os.MkdirAll(filePath, 0755)
	symlink := filepath.Join(filePath, fileName)
	os.Symlink(targetPath, symlink)
}
