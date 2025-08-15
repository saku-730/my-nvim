return{
  "shellRaining/hlchunk.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
	require("hlchunk").setup({
		chunk = {
		    enable = true,
		    chars = {
			 horizontal_line = "─",
			 vertical_line = "│",
			 left_top = "╭",
			 left_bottom = "╰",
			 right_arrow = ">",
		    },
		    style = "#806d9c",
		},
		indent = {
			enable = true,
			chars = {
				"│",
			 },
			 style = {
			        "#FF0000",
				"#FF7F00",
				"#FFFF00",
				"#00FF00",
				"#00FFFF",
				"#0000FF",
				"#8B00FF",
			 },
		},
		blank = {
		    enable = false,
		    chars = {
			" ",
		    },
		    style = {
			{ bg = "#434437" },
			{ bg = "#2f4440" },
			{ bg = "#433054" },
			{ bg = "#284251" },
		    },
		},
	})
  end,
}
