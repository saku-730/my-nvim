-- lazy.nvimのインストール先
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

-- もしlazy.nvimがなければ、GitHubからクローンする
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- 最新の安定版
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

local plugins = {
}

-- road options setting
require("options")

-- road keymaps
require("keymaps")

-- pluginsディレクトリ読み込み
require("lazy").setup("plugins")
