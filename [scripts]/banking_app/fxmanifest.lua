fx_version 'cerulean'
use_experimental_fxv2_oal 'yes'
lua54 'yes'
game 'gta5'

description "Advanced Banking System - LB Phone integration"
author "Felis Development"
version      '1.1.1'
repository 'https://github.com/felisDevelopment/banking_app'

dependencies {
    '/server:5104',
    '/onesync',
    'banking',
    'lb-phone'
}

files {
    'web/dist/index.html',
    'web/dist/**/*',
    'web/public/**/*'
}

shared_script "@ox_lib/init.lua"

client_scripts {
    "integration/**/client.lua",
    "client.lua"
}

server_scripts {
    "integration/**/server.lua",
    "server.lua"
}
