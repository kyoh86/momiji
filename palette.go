package main

import (
	"image/color"
)

type Name string

type ColorPalette struct {
	Black        Color
	Red          Color
	Green        Color
	Yellow       Color
	Blue         Color
	Magenta      Color
	Cyan         Color
	White        Color
	LightBlack   Color
	LightRed     Color
	LightGreen   Color
	LightYellow  Color
	LightBlue    Color
	LightMagenta Color
	LightCyan    Color
	LightWhite   Color
	HardBlack    Color
	GrayScale1   Color
	GrayScale2   Color
	GrayScale3   Color
	GrayScale4   Color
	GrayScale5   Color
}

var Palette = ColorPalette{
	Black: Color{
		// rgb( 20,  12,  12) rgb(  7.8%,   4.7%,   4.7%)
		RGBA:  color.RGBA{R: 0x14, G: 0x0c, B: 0x0c},
		Index: 0,
	},
	Red: Color{
		// rgb(218,  87, 116) rgb( 85.5%,  34.1%,  45.5%)
		RGBA:  color.RGBA{R: 0xda, G: 0x57, B: 0x74},
		Index: 1,
	},
	Green: Color{
		// rgb( 52, 140,  78) rgb( 20.4%,  54.9%,  30.6%)
		RGBA:  color.RGBA{R: 0x34, G: 0x8c, B: 0x4e},
		Index: 2,
	},
	Yellow: Color{
		// rgb(231, 168,  43) rgb( 90.6%,  65.9%,  16.9%)
		RGBA:  color.RGBA{R: 0xe7, G: 0xa8, B: 0x2b},
		Index: 3,
	},
	Blue: Color{
		// rgb( 72, 132, 210) rgb( 28.2%,  51.8%,  82.4%)
		RGBA:  color.RGBA{R: 0x48, G: 0x84, B: 0xd2},
		Index: 4,
	},
	Magenta: Color{
		// rgb(165,  90, 170) rgb( 64.7%,  35.3%,  66.7%)
		RGBA:  color.RGBA{R: 0xa5, G: 0x5a, B: 0xaa},
		Index: 5,
	},
	Cyan: Color{
		// rgb( 31, 144, 168) rgb( 12.2%,  56.5%,  65.9%)
		RGBA:  color.RGBA{R: 0x1f, G: 0x90, B: 0xa8},
		Index: 6,
	},
	White: Color{
		// rgb(160, 153, 153) rgb( 62.7%,  60.0%,  60.0%)
		RGBA:  color.RGBA{R: 0xa0, G: 0x99, B: 0x99},
		Index: 7,
	},
	LightBlack: Color{
		// rgb( 90,  78,  78) rgb( 35.3%,  30.6%,  30.6%)
		RGBA:  color.RGBA{R: 0x5a, G: 0x4e, B: 0x4e},
		Index: 8,
	},
	LightRed: Color{
		// rgb(245, 135,  91) rgb( 96.1%,  52.9%,  35.7%)
		RGBA:  color.RGBA{R: 0xf5, G: 0x87, B: 0x5b},
		Index: 9,
	},
	LightGreen: Color{
		// rgb(154, 190, 134) rgb( 60.4%,  74.5%,  52.5%)
		RGBA:  color.RGBA{R: 0x9a, G: 0xbe, B: 0x86},
		Index: 10,
	},
	LightYellow: Color{
		// rgb(255, 215, 145) rgb(100.0%,  84.3%,  56.9%)
		RGBA:  color.RGBA{R: 0xff, G: 0xd7, B: 0x91},
		Index: 11,
	},
	LightBlue: Color{
		// rgb(137, 183, 225) rgb( 53.7%,  71.8%,  88.2%)
		RGBA:  color.RGBA{R: 0x89, G: 0xb7, B: 0xe1},
		Index: 12,
	},
	LightMagenta: Color{
		// rgb(238, 161, 209) rgb( 93.3%,  63.1%,  82.0%)
		RGBA:  color.RGBA{R: 0xee, G: 0xa1, B: 0xd1},
		Index: 13,
	},
	LightCyan: Color{
		// rgb(105, 178, 172) rgb( 41.2%,  69.8%,  67.5%)
		RGBA:  color.RGBA{R: 0x69, G: 0xb2, B: 0xac},
		Index: 14,
	},
	LightWhite: Color{
		// rgb(230, 227, 227) rgb( 90.2%,  89.0%,  89.0%)
		RGBA:  color.RGBA{R: 0xe6, G: 0xe3, B: 0xe3},
		Index: 15,
	},
	HardBlack: Color{
		// rgb(  8,   8,   8) rgb(  3.1%,   3.1%,   3.1%)
		RGBA:  color.RGBA{R: 0x08, G: 0x08, B: 0x08},
		Index: 232,
	},
	GrayScale1: Color{
		// rgb( 55,  42,  42) rgb( 21.6%,  16.5%,  16.5%)
		RGBA:  color.RGBA{R: 0x37, G: 0x2a, B: 0x2a},
		Index: 235,
	},
	GrayScale2: Color{
		// rgb( 90,  78,  78) rgb( 35.3%,  30.6%,  30.6%)
		RGBA:  color.RGBA{R: 0x5a, G: 0x4e, B: 0x4e},
		Index: 236,
	},
	GrayScale3: Color{
		// rgb(125, 115, 115) rgb( 49.0%,  45.1%,  45.1%)
		RGBA:  color.RGBA{R: 0x7d, G: 0x73, B: 0x73},
		Index: 237,
	},
	GrayScale4: Color{
		// rgb(160, 153, 153) rgb( 62.7%,  60.0%,  60.0%)
		RGBA:  color.RGBA{R: 0xa0, G: 0x99, B: 0x99},
		Index: 238,
	},
	GrayScale5: Color{
		// rgb(195, 190, 190) rgb( 76.5%,  74.5%,  74.5%)
		RGBA:  color.RGBA{R: 0xc3, G: 0xbe, B: 0xbe},
		Index: 239,
	},
}
