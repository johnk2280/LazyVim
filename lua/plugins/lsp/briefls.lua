-- Brief language server (Avito internal). Installed manually, not via Mason.
-- Binary expected on PATH (e.g. /usr/local/bin/briefls).

return {
    cmd = { "briefls" },
    filetypes = { "brief" },
    root_markers = { ".git" },
    single_file_support = true,
}
