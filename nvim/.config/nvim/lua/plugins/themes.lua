return {
    {
        'fneu/breezy',
        priority = 1000,
        init = function()
            vim.cmd.colorscheme 'breezy'
            vim.cmd.hi 'Comment gui=none'
        end,
    },
    { 'rebelot/kanagawa.nvim' },
    { 'folke/tokyonight.nvim' },
    { 'catppuccin/nvim',      name = 'catppuccin' },
    { 'ayu-theme/ayu-vim' },
    { 'navarasu/onedark.nvim' },
}
