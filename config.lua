config = function()
require("presence").setup({
  -- General options
  auto_update         = true,                       -- Update activity based on autocmd events (if `false`, map or manually execute `:lua package.loaded.presence:update()`)
  neovim_image_text   = "Nigg...", -- Text displayed when hovered over the Neovim image
  main_image          = "file",                   -- Main image display (either "neovim" or "file")
  client_id           = "793271441293967371",       -- Use your own Discord application client id (not recommended)
  log_level           = nil,                        -- Log messages at or above this level (one of the following: "debug", "info", "warn", "error")
  debounce_timeout    = 10,                         -- Number of seconds to debounce events (or calls to `:lua package.loaded.presence:update(<filename>, true)`)
  enable_line_number  = false,                      -- Displays the current line number instead of the current project
  blacklist           = {},                         -- A list of strings or Lua patterns that disable Rich Presence if the current file name, path, or workspace matches
  buttons             = true,                       -- Configure Rich Presence button(s), either a boolean to enable/disable, a static table (`{{ label = "<label>", url = "<url>" }, ...}`, or a function(buffer: string, repo_url: string|nil): table)
  file_assets         = {
    cpp = { "C++", "https://raw.githubusercontent.com/Ja1z666/lvim_discord_presence/main/assets/cpp.png" },
    cs = { "C#", "https://raw.githubusercontent.com/Ja1z666/lvim_discord_presence/main/assets/csharp.png" },
    css = { "CSS", "https://raw.githubusercontent.com/Ja1z666/lvim_discord_presence/main/assets/css.png" },
    go = { "GO", "https://raw.githubusercontent.com/Ja1z666/lvim_discord_presence/main/assets/go.png" },
    html = { "HTML", "https://raw.githubusercontent.com/Ja1z666/lvim_discord_presence/main/assets/html.png" },
    lua = { "Lua", "https://raw.githubusercontent.com/Ja1z666/lvim_discord_presence/main/assets/lua.png" },
    markdown = { "Markdown", "https://raw.githubusercontent.com/Ja1z666/lvim_discord_presence/main/assets/markdown.png" },
    rs = { "Rust", "https://raw.githubusercontent.com/Ja1z666/lvim_discord_presence/main/assets/rust.png" },
  },                         -- Custom file asset definitions keyed by file names and extensions (see default config at `lua/presence/file_assets.lua` for reference)
  show_time           = true,                       -- Show the timer

  -- Rich Presence text options
  editing_text        = "Editing %s <3",               -- Format string rendered when an editable file is loaded in the buffer (either string or function(filename: string): string)
  file_explorer_text  = "Browsing %s <3",              -- Format string rendered when browsing a file explorer (either string or function(file_explorer_name: string): string)
  git_commit_text     = "Committing changes <3",       -- Format string rendered when committing changes in git (either string or function(filename: string): string)
  plugin_manager_text = "Managing plugins <3",         -- Format string rendered when managing plugins (either string or function(plugin_manager_name: string): string)
  reading_text        = "Reading %s <3",               -- Format string rendered when a read-only or unmodifiable file is loaded in the buffer (either string or function(filename: string): string)
  workspace_text      = "Working on %s <3",            -- Format string rendered when in a git repository (either string or function(project_name: string|nil, filename: string): string)
  line_number_text    = "Line %s out of %s <3",        -- Format string rendered when `enable_line_number` is set to true (either string or function(line_number: number, line_count: number): string)
})
end,
