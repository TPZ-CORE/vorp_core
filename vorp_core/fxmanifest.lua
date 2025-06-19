fx_version 'cerulean'
game 'rdr3'
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'
lua54 'yes'

name 'vorp core'
description 'A Tool to build your RedM server and scripts'
author 'VORP' -- converted from the original C# vorp core by goncalobsccosta#9041
repository 'https://github.com/VORPCORE/vorp-core-lua'


client_scripts {
    'client/exports/*.lua',
    'client/*.lua',
}

server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'server/*lua',
}
