package main

type ColorPalette struct {
	Black         Color
	Red           Color
	Green         Color
	Yellow        Color
	Blue          Color
	Magenta       Color
	Cyan          Color
	White         Color
	BrightBlack   Color
	BrightRed     Color
	BrightGreen   Color
	BrightYellow  Color
	BrightBlue    Color
	BrightMagenta Color
	BrightCyan    Color
	BrightWhite   Color
	Gradation1    Color
	Gradation2    Color
	Gradation3    Color
	Gradation4    Color
	Gradation5    Color

	Background Color
	Foreground Color

	WeakRed       Color
	WeakGreen     Color
	WeakYellow    Color
	WeakBlue      Color
	WeakMagenta   Color
	WeakCyan      Color
	StrongRed     Color
	StrongGreen   Color
	StrongYellow  Color
	StrongBlue    Color
	StrongMagenta Color
	StrongCyan    Color
}

var Palette = ColorPalette{
	Black: Color{
		RGBA:  FromHex("140c0c"),
		Index: 0,
	},
	Red: Color{
		RGBA:  FromHex("da5774"),
		Index: 1,
	},
	Green: Color{
		RGBA:  FromHex("348c4e"),
		Index: 2,
	},
	Yellow: Color{
		RGBA:  FromHex("e7a82b"),
		Index: 3,
	},
	Blue: Color{
		RGBA:  FromHex("4884d2"),
		Index: 4,
	},
	Magenta: Color{
		RGBA:  FromHex("a55aaa"),
		Index: 5,
	},
	Cyan: Color{
		RGBA:  FromHex("1f90a8"),
		Index: 6,
	},
	White: Color{
		RGBA:  FromHex("a09999"), // Gradation4
		Index: 7,
	},
	BrightBlack: Color{
		RGBA:  FromHex("5a4e4e"), // Gradation2
		Index: 8,
	},
	BrightRed: Color{
		RGBA:  FromHex("f5875b"),
		Index: 9,
	},
	BrightGreen: Color{
		RGBA:  FromHex("9abe86"),
		Index: 10,
	},
	BrightYellow: Color{
		RGBA:  FromHex("ffd791"),
		Index: 11,
	},
	BrightBlue: Color{
		RGBA:  FromHex("89b7e1"),
		Index: 12,
	},
	BrightMagenta: Color{
		RGBA:  FromHex("eea1d1"),
		Index: 13,
	},
	BrightCyan: Color{
		RGBA:  FromHex("69b2ac"),
		Index: 14,
	},
	BrightWhite: Color{
		RGBA:  FromHex("e6e3e3"),
		Index: 15,
	},
	Gradation1: Color{
		RGBA:  FromHex("372a2a"),
		Index: 235,
	},
	Gradation2: Color{
		RGBA:  FromHex("5a4e4e"),
		Index: 236,
	},
	Gradation3: Color{
		RGBA:  FromHex("7d7373"),
		Index: 237,
	},
	Gradation4: Color{
		RGBA:  FromHex("a09999"),
		Index: 238,
	},
	Gradation5: Color{
		RGBA:  FromHex("c3bebe"),
		Index: 239,
	},
}

func init() {
	Palette.Background = Palette.Black
	Palette.Foreground = Palette.BrightWhite

	Palette.WeakRed = Palette.Red
	Palette.WeakGreen = Palette.Green
	Palette.WeakYellow = Palette.Yellow
	Palette.WeakBlue = Palette.Blue
	Palette.WeakMagenta = Palette.Magenta
	Palette.WeakCyan = Palette.Cyan

	Palette.StrongRed = Palette.BrightRed
	Palette.StrongGreen = Palette.BrightGreen
	Palette.StrongYellow = Palette.BrightYellow
	Palette.StrongBlue = Palette.BrightBlue
	Palette.StrongMagenta = Palette.BrightMagenta
	Palette.StrongCyan = Palette.BrightCyan
}
