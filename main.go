package main

import (
	"fmt"
	"html/template"
	"io/fs"
	"log"
	"os"
	"path/filepath"
	"strings"
)

func main() {
	if err := do(); err != nil {
		log.Fatal(err)
	}
}

func do() error {
	return filepath.Walk(".", func(path string, info fs.FileInfo, err error) error {
		if err != nil {
			log.Printf("failed to traverse %s: %s", path, err)
		}
		if info.IsDir() {
			return nil
		}
		if !strings.HasSuffix(path, ".tmpl") {
			return nil
		}

		source, err := os.ReadFile(path)
		if err != nil {
			return fmt.Errorf("reading source: %w", err)
		}
		output := strings.TrimSuffix(path, ".tmpl")

		tmp := template.New("hoge").Funcs(map[string]any{
			"Foreground": Foreground,
			"Background": Background,
			"Emphasis":   Emphasis,
		})
		tmp, err = tmp.Parse(string(source))
		if err != nil {
			return fmt.Errorf("parsing source file: %w", err)
		}
		writer, err := os.OpenFile(output, os.O_CREATE|os.O_TRUNC|os.O_WRONLY, 0644)
		if err != nil {
			return fmt.Errorf("opening output file: %w", err)
		}
		defer writer.Close()
		if err := tmp.Execute(writer, Palette); err != nil {
			return fmt.Errorf("executing template: %w", err)
		}
		log.Printf("generated %s from %s", output, path)
		return nil
	})
}
