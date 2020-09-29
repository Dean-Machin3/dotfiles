package symlink

import (
	"fmt"
	"os"
	"path/filepath"
)

func Symlink(fileName string) {
	path, err := os.Getwd()
	if err != nil {
		fmt.Println(err)
	}
	user := os.Getenv("USER")
	parent := filepath.Dir(path)
	//mac specific
	filePath := fmt.Sprintf("/Users/%v/test", user)
	targetPath := filepath.Join(parent, fileName)
	fmt.Println(targetPath)
	fmt.Println(filePath)

	os.MkdirAll(filePath, 0755)
	symlink := filepath.Join(filePath, fileName)
	os.Symlink(targetPath, symlink)
}
