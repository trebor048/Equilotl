package appdir

import (
	"os"
	"path/filepath"
)

type dirs struct {
	name string
}

func (d *dirs) UserConfig() string {
	return filepath.Join(os.Getenv("HOME"), "Library", "Application Support", d.name)
}

func (d *dirs) UserCache() string {
	return filepath.Join(os.Getenv("HOME"), "Library", "Caches", d.name)
}

func (d *dirs) UserLogs() string {
	return filepath.Join(os.Getenv("HOME"), "Library", "Logs", d.name)
}

func (d *dirs) UserData() string {
	return filepath.Join(os.Getenv("HOME"), "Library", "Application Support", d.name)
}
