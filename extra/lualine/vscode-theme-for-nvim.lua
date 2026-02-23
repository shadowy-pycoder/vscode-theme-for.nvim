local colors = {
	blue = "#4fc1ff",
	green = "#89d185",
	purple = "#C586C0",
	cyan = "#569CD6",
	red = "#D16969",
	yellow = "#D7BA7D",
	fg = "#cccccc",
	bg = "#1f1f1f",
	gray1 = "#828997",
	gray2 = "#2c323c",
	gray3 = "#3e4452",
}

return {
	normal = {
		a = { fg = colors.bg, bg = colors.green, gui = "bold" },
		b = { fg = colors.fg, bg = colors.gray3 },
		c = { fg = colors.fg, bg = colors.gray2 },
	},
	command = { a = { fg = colors.bg, bg = colors.yellow, gui = "bold" } },
	insert = { a = { fg = colors.bg, bg = colors.blue, gui = "bold" } },
	visual = { a = { fg = colors.bg, bg = colors.purple, gui = "bold" } },
	terminal = { a = { fg = colors.bg, bg = colors.cyan, gui = "bold" } },
	replace = { a = { fg = colors.bg, bg = colors.red, gui = "bold" } },
	inactive = {
		a = { fg = colors.gray1, bg = colors.bg, gui = "bold" },
		b = { fg = colors.gray1, bg = colors.bg },
		c = { fg = colors.gray1, bg = colors.gray2 },
	},
}
