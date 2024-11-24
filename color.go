package main

import (
	"fmt"
	"image/color"
)

type Color struct {
	RGBA  color.RGBA
	Index uint8
}

// ToHex forms rrggbb
func (c Color) ToHex() string {
	return fmt.Sprintf("%02x%02x%02x", c.RGBA.R, c.RGBA.G, c.RGBA.B)
}

// ToRGBFunc forms rgb(255, 255, 255)
func (c Color) ToRGBFunc() string {
	return fmt.Sprintf("rgb(%d,%d,%d)", c.RGBA.R, c.RGBA.G, c.RGBA.B)
}

// FromHex converts rrggbb to color.RGBA
func FromHex(hex string) (v color.RGBA) {
	_, err := fmt.Sscanf(hex, "%02x%02x%02x", &v.R, &v.G, &v.B)
	if err != nil {
		panic(err)
	}
	return
}
