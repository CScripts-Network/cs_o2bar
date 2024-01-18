fx_version 'adamant'
game 'gta5'
lua54 "yes"

author 'CScripts Network'
description 'CScripts Network O2 Bar'
version '0.0.3'

files {
    'web/html.html',
    'web/css.css',
    'web/js.js',
    'web/SignikaNegative-Regular.ttf',
}

ui_page 'web/html.html'
client_script "client.lua"

dependencies {
    'cs_lib'
}