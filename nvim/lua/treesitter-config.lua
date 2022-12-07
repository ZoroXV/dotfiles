require 'nvim-treesitter.configs'.setup {
    ensure_installed = {
        'vim',
        'lua',
        'comment',
        'gitcommit',
        'gitattributes',
        'git_rebase',
    },
    sync_install = false,
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
}
