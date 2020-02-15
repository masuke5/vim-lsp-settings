augroup vimlsp_settings_glslls
  au!
  LspRegisterServer {
      \ 'name': 'glslls',
      \ 'cmd': {server_info->lsp_settings#get('glslls', 'cmd', [lsp_settings#exec_path('glslls'), '--stdin'])},
      \ 'root_uri':{server_info->lsp_settings#get('glslls', 'root_uri', lsp_settings#root_uri())},
      \ 'initialization_options': lsp_settings#get('glslls', 'initialization_options', v:null),
      \ 'whitelist': lsp_settings#get('glslls', 'whitelist', ['glsl']),
      \ 'blacklist': lsp_settings#get('glslls', 'blacklist', []),
      \ 'config': lsp_settings#get('glslls', 'config', lsp_settings#server_config('glslls')),
      \ 'workspace_config': lsp_settings#get('glslls', 'workspace_config', {name, key->{'json': {'format': {'enable': v:true}, 'schemas': json_decode(join(readfile(expand('<sfile>:h:h') . '/data/catalog.json'), "\n"))['schemas']}}}),
      \ }
augroup END
