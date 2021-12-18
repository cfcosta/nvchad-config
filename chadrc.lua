local M = {}

M.mappings = {
  plugins = {
    bufferline = {
      next_buffer = "<leader>bn",
      prev_buffer = "leader>bp",
    },

    comment = {
      toggle = "gcc",
    },

    dashboard = {
      bookmarks = "<leader>bm",
      new_file = "<leader>fn",
      open = "<leader>db",
      session_load = "<leader>l",
      session_save = "<leader>s",
    },

    better_escape = {
      esc_insertmode = { "jk" },
    },

    nvimtree = {
      toggle = "<leader>op",
      focus = "<leader>e",
    },

    telescope = {
      buffers = "<leader>bb",
      find_files = "<leader>ff",
      find_hiddenfiles = "<leader>fa",
      git_commits = "<leader>cm",
      git_status = "<leader>gt",
      help_tags = "<leader>fh",
      live_grep = "<leader>/",
      oldfiles = "<leader>fo",
      themes = "<leader>th",

      telescope_media = {
        media_files = "<leader>fp",
      },
    },
  }
}

M.ui = {
  theme = "chadracula",
}

return M
