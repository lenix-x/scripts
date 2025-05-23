fx_version 'cerulean'
games { 'gta5' }
author 'Lenix__x'

version '1.2.0'

ui_page 'html/index.html'

client_scripts {
  'config.lua',
  'client/main.lua',
}

files {
	'html/index.html',
	'html/script.js',
	'html/*.svg',
	'html/radio.png',
	'html/main.css',
}

server_scripts {
  'config.lua',
  'server/main.lua',
}
server_scripts {
	'@mysql-async/lib/MySQL.lua'
}