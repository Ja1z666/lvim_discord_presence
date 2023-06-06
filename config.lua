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
    hpp = { "C++ Header", "https://raw.githubusercontent.com/Ja1z666/lvim_discord_presence/main/assets/cpp.png" },
    hxx = { "C++ Header", "https://raw.githubusercontent.com/Ja1z666/lvim_discord_presence/main/assets/cpp.png" },
    cc = { "C++", "https://raw.githubusercontent.com/Ja1z666/lvim_discord_presence/main/assets/cpp.png" },
    cxx = { "C++", "https://raw.githubusercontent.com/Ja1z666/lvim_discord_presence/main/assets/cpp.png" },
    cs = { "C#", "https://raw.githubusercontent.com/Ja1z666/lvim_discord_presence/main/assets/csharp.png" },
    css = { "CSS", "https://raw.githubusercontent.com/Ja1z666/lvim_discord_presence/main/assets/css.png" },
    go = { "GO", "https://raw.githubusercontent.com/Ja1z666/lvim_discord_presence/main/assets/go.png" },
    html = { "HTML", "https://raw.githubusercontent.com/Ja1z666/lvim_discord_presence/main/assets/html.png" },
    lua = { "Lua", "https://raw.githubusercontent.com/Ja1z666/lvim_discord_presence/main/assets/lua.png" },
    markdown = { "Markdown", "https://raw.githubusercontent.com/Ja1z666/lvim_discord_presence/main/assets/markdown.png" },
    rs = { "Rust", "https://raw.githubusercontent.com/Ja1z666/lvim_discord_presence/main/assets/rust.png" },
    py = { "Python", "https://raw.githubusercontent.com/Ja1z666/lvim_discord_presence/main/assets/python.png" },
    zig = { "Zig", "https://raw.githubusercontent.com/Ja1z666/lvim_discord_presence/main/assets/zig.png" },
    sql = { "Sql", "https://raw.githubusercontent.com/Ja1z666/lvim_discord_presence/main/assets/sql.png" },
    scss = { "Scss", "https://raw.githubusercontent.com/Ja1z666/lvim_discord_presence/main/assets/scss.png" },
    sass = { "Sass", "https://raw.githubusercontent.com/Ja1z666/lvim_discord_presence/main/assets/scss.png" },
    gql = { "GraphQL", "https://raw.githubusercontent.com/Ja1z666/lvim_discord_presence/main/assets/graphql.png" },
    c = { "C", "https://raw.githubusercontent.com/Ja1z666/lvim_discord_presence/main/assets/c.png" },
    h = { "C Header", "https://raw.githubusercontent.com/Ja1z666/lvim_discord_presence/main/assets/c.png" },
    vue = { "Vue", "https://raw.githubusercontent.com/Ja1z666/lvim_discord_presence/main/assets/vue.png" },
    yaml = { "Yaml", "https://raw.githubusercontent.com/Ja1z666/lvim_discord_presence/main/assets/yml.png" },
    yml = { "Yaml", "https://raw.githubusercontent.com/Ja1z666/lvim_discord_presence/main/assets/yml.png" }, 
    cl = { "Lisp", "https://raw.githubusercontent.com/Ja1z666/lvim_discord_presence/main/assets/lisp.png" },
    fasl = { "Lisp", "https://raw.githubusercontent.com/Ja1z666/lvim_discord_presence/main/assets/lisp.png" },
    l = { "Lisp", "https://raw.githubusercontent.com/Ja1z666/lvim_discord_presence/main/assets/lisp.png" },
    lsp = { "Lisp", "https://raw.githubusercontent.com/Ja1z666/lvim_discord_presence/main/assets/lisp.png" },
    lisp = { "Lisp", "https://raw.githubusercontent.com/Ja1z666/lvim_discord_presence/main/assets/lisp.png" },
    log = { "Log", "https://raw.githubusercontent.com/Ja1z666/lvim_discord_presence/main/assets/log.png" },
    svg = { "Svg", "https://raw.githubusercontent.com/Ja1z666/lvim_discord_presence/main/assets/svg.png" },
    wasm = { "WebAssembly", "https://raw.githubusercontent.com/Ja1z666/lvim_discord_presence/main/assets/wasm.png" },
    wast = { "WebAssembly", "https://raw.githubusercontent.com/Ja1z666/lvim_discord_presence/main/assets/wasm.png" },
    wat = { "WebAssembly", "https://raw.githubusercontent.com/Ja1z666/lvim_discord_presence/main/assets/wasm.png" },
    tsx = { "React", "https://raw.githubusercontent.com/Ja1z666/lvim_discord_presence/main/assets/tsx.png" },
    jsx = { "React", "https://raw.githubusercontent.com/Ja1z666/lvim_discord_presence/main/assets/jsx.png" },
    ts = { "Typescript", "https://raw.githubusercontent.com/Ja1z666/lvim_discord_presence/main/assets/ts.png" },
    js = { "Javascript", "https://raw.githubusercontent.com/Ja1z666/lvim_discord_presence/main/assets/js.png" },
    mjs = { "Javascript", "https://raw.githubusercontent.com/Ja1z666/lvim_discord_presence/main/assets/js.png" },
    v = { "Vlang", "https://raw.githubusercontent.com/Ja1z666/lvim_discord_presence/main/assets/v.png" },
    vsh = { "Vlang shell script", "https://raw.githubusercontent.com/Ja1z666/lvim_discord_presence/main/assets/v.png" },
    less = { "Less", "https://raw.githubusercontent.com/Ja1z666/lvim_discord_presence/main/assets/less.png" },
    kivy = { "Less", "https://raw.githubusercontent.com/Ja1z666/lvim_discord_presence/main/assets/kivy.png" },
    gsh = { "Groovy", "https://raw.githubusercontent.com/Ja1z666/lvim_discord_presence/main/assets/groovy.png" },
    gvy = { "Groovy", "https://raw.githubusercontent.com/Ja1z666/lvim_discord_presence/main/assets/groovy.png" },
    gy = { "Groovy", "https://raw.githubusercontent.com/Ja1z666/lvim_discord_presence/main/assets/groovy.png" },
    groovy = { "Groovy", "https://raw.githubusercontent.com/Ja1z666/lvim_discord_presence/main/assets/groovy.png" },
    coffee = { "Coffee", "https://raw.githubusercontent.com/Ja1z666/lvim_discord_presence/main/assets/coffee.png" },
    shell = { "Bash", "https://raw.githubusercontent.com/Ja1z666/lvim_discord_presence/main/assets/shell.png" },
    sh = { "Bash", "https://raw.githubusercontent.com/Ja1z666/lvim_discord_presence/main/assets/shell.png" },
    shrc = { "Bash Config", "https://raw.githubusercontent.com/Ja1z666/lvim_discord_presence/main/assets/shell.png" },
    bash = { "Bash", "https://raw.githubusercontent.com/Ja1z666/lvim_discord_presence/main/assets/shell.png" },
    nix = { "Nix", "https://raw.githubusercontent.com/Ja1z666/lvim_discord_presence/main/assets/nix.png" },
    nim = { "Nim", "https://raw.githubusercontent.com/Ja1z666/lvim_discord_presence/main/assets/nim.png" },
    pcss = { "PostCSS", "https://raw.githubusercontent.com/Ja1z666/lvim_discord_presence/main/assets/postcss.png" },
    cr = { "Crystal", "https://raw.githubusercontent.com/Ja1z666/lvim_discord_presence/main/assets/crystal.png" },
    json = { "Json", "https://raw.githubusercontent.com/Ja1z666/lvim_discord_presence/main/assets/json.png" },
    jl = { "Julia", "https://raw.githubusercontent.com/Ja1z666/lvim_discord_presence/main/assets/julia.png" },
    java = { "Java", "https://raw.githubusercontent.com/Ja1z666/lvim_discord_presence/main/assets/java.png" },
    d = { "D", "https://raw.githubusercontent.com/Ja1z666/lvim_discord_presence/main/assets/d.png" },
    dart = { "Dart", "https://raw.githubusercontent.com/Ja1z666/lvim_discord_presence/main/assets/dart.png" },
    snap = { "Jest", "https://raw.githubusercontent.com/Ja1z666/lvim_discord_presence/main/assets/jest.png" },
    txt = { "Text file", "https://raw.githubusercontent.com/Ja1z666/lvim_discord_presence/main/assets/text.png" },
    text = { "Text file", "https://raw.githubusercontent.com/Ja1z666/lvim_discord_presence/main/assets/text.png" },
    applescript = { "Applescript", "https://raw.githubusercontent.com/Ja1z666/lvim_discord_presence/main/assets/applescript.png" },
    ahk = { "Autohotkey", "https://raw.githubusercontent.com/Ja1z666/lvim_discord_presence/main/assets/ahk.png" },
    clj = { "Clojure", "https://raw.githubusercontent.com/Ja1z666/lvim_discord_presence/main/assets/clojure.png" },
    cljs = { "ClojureScript", "https://raw.githubusercontent.com/Ja1z666/lvim_discord_presence/main/assets/clojure.png" },
    fs = { "F#", "https://raw.githubusercontent.com/Ja1z666/lvim_discord_presence/main/assets/clojure.png" },
    ps1 = { "PowerShell", "https://raw.githubusercontent.com/Ja1z666/lvim_discord_presence/main/assets/powershell.png" },
    psd1 = { "PowerShell", "https://raw.githubusercontent.com/Ja1z666/lvim_discord_presence/main/assets/powershell.png" },
    psm1 = { "PowerShell", "https://raw.githubusercontent.com/Ja1z666/lvim_discord_presence/main/assets/powershell.png" },
    re = { "Reason", "https://raw.githubusercontent.com/Ja1z666/lvim_discord_presence/main/assets/reasonml.png" },
    tf = { "Terraform", "https://raw.githubusercontent.com/Ja1z666/lvim_discord_presence/main/assets/terraform.png" },
    toml = { "TOML", "https://raw.githubusercontent.com/Ja1z666/lvim_discord_presence/main/assets/toml.png" },
    xml = { "XML", "https://raw.githubusercontent.com/Ja1z666/lvim_discord_presence/main/assets/xml.png" },
    xsd = { "XML Schema", "https://raw.githubusercontent.com/Ja1z666/lvim_discord_presence/main/assets/xml.png" },
    xslt = { "XSLT", "https://raw.githubusercontent.com/Ja1z666/lvim_discord_presence/main/assets/xml.png" },
    mdx = { "MDX", "https://raw.githubusercontent.com/Ja1z666/lvim_discord_presence/main/assets/markdownx.png" },
    ino = { "Arduino", "https://raw.githubusercontent.com/Ja1z666/lvim_discord_presence/main/assets/arduino.png" },
    elm = { "Elm", "https://raw.githubusercontent.com/Ja1z666/lvim_discord_presence/main/assets/elm.png" },
    hs = { "Haskell", "https://raw.githubusercontent.com/Ja1z666/lvim_discord_presence/main/assets/haskell.png" },
    cabal = { "Cabal file", "https://raw.githubusercontent.com/Ja1z666/lvim_discord_presence/main/assets/haskell.png" },
    rkt = { "Racket", "https://raw.githubusercontent.com/Ja1z666/lvim_discord_presence/main/assets/racket.png" },
    ml = { "OCaml", "https://raw.githubusercontent.com/Ja1z666/lvim_discord_presence/main/assets/ocaml.png" },
    purs = { "PureScript", "https://raw.githubusercontent.com/Ja1z666/lvim_discord_presence/main/assets/purescript.png" },
    r = { "R", "https://raw.githubusercontent.com/Ja1z666/lvim_discord_presence/main/assets/r.png" },
    rb = { "Ruby", "https://raw.githubusercontent.com/Ja1z666/lvim_discord_presence/main/assets/ruby.png" },
    gemspec = { "Gem Spec", "https://raw.githubusercontent.com/Ja1z666/lvim_discord_presence/main/assets/ruby.png" },
    hx = { "Haxe", "https://raw.githubusercontent.com/Ja1z666/lvim_discord_presence/main/assets/haxe.png" },
    erl = { "Erlang", "https://raw.githubusercontent.com/Ja1z666/lvim_discord_presence/main/assets/erlang.png" },
    swift = { "Swift", "https://raw.githubusercontent.com/Ja1z666/lvim_discord_presence/main/assets/swift.png" },
    svelte = { "Svelte", "https://raw.githubusercontent.com/Ja1z666/lvim_discord_presence/main/assets/svelte.png" },
    scala = { "Scala", "https://raw.githubusercontent.com/Ja1z666/lvim_discord_presence/main/assets/scala.png" },
    php = { "PHP", "https://raw.githubusercontent.com/Ja1z666/lvim_discord_presence/main/assets/php.png" },
    pl = { "Perl", "https://raw.githubusercontent.com/Ja1z666/lvim_discord_presence/main/assets/perl.png" },
    kt = { "Kotlin", "https://raw.githubusercontent.com/Ja1z666/lvim_discord_presence/main/assets/kotlin.png" },
    ipynb = { "Jupyter Notebook", "https://raw.githubusercontent.com/Ja1z666/lvim_discord_presence/main/assets/jupyter.png" },
    ex = { "Elixir", "https://raw.githubusercontent.com/Ja1z666/lvim_discord_presence/main/assets/elixir.png" },
    postcss = { "PostCSS", "https://raw.githubusercontent.com/Ja1z666/lvim_discord_presence/main/assets/postcss.png" },
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
