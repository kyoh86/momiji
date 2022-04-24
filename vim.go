package main

import (
	"fmt"
	"strings"
)

func Foreground(c Color) string {
	return fmt.Sprintf("guifg=#%02x%02x%02x ctermfg=%d", c.RGBA.R, c.RGBA.G, c.RGBA.B, c.Index)
}

func Background(c Color) string {
	return fmt.Sprintf("guibg=#%02x%02x%02x ctermbg=%d", c.RGBA.R, c.RGBA.G, c.RGBA.B, c.Index)
}

func Emphasis(emphases ...string) string {
	return fmt.Sprintf("gui=%[1]s cterm=%[1]s", strings.Join(emphases, ","))
}
