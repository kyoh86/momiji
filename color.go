package main

import (
	"fmt"
	"image/color"
)

type Color struct {
	RGBA  color.RGBA
	Index uint8
}

func (c Color) HexRGB() string {
	return fmt.Sprintf("%02x%02x%02x", c.RGBA.R, c.RGBA.G, c.RGBA.B)
}

// DecRGBFunc forms rgb(255, 255, 255)
func (c Color) DecRGBFunc() string {
	return fmt.Sprintf("rgb(%d,%d,%d)", c.RGBA.R, c.RGBA.G, c.RGBA.B)
}
