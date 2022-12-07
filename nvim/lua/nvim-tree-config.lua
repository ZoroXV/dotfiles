require("nvim-tree").setup({
    open_on_setup = true,
    open_on_setup_file = true,
    view = {
        width = 20,
        mappings = {
            list = {
                { key = "u", action = "dir_up" },
            },
        },
    },
    renderer = {
        group_empty = true,
    },
    diagnostics = {
        enable = true,
        show_on_dirs = false,
        show_on_open_dirs = true,
        debounce_delay = 50,
        severity = {
            min = vim.diagnostic.severity.HINT,
            max = vim.diagnostic.severity.ERROR
        },
        icons = {
            hint = "",
            info = "",
            warning = "",
            error = "",
        },
    },
})
