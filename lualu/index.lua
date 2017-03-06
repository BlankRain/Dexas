local template = require "resty.template"
--[====[

template.render([[
<!DOCTYPE html>
<html>
<body>
  <h1>{{message}}</h1>
  </body>
  </html>]], { message = "Hello, World!" })

]====]

local template = require "resty.template"
template.render("index.view", {
  title   = "Testing lua-resty-template",
    message = "Hello, World!",
      names   = { "James", "Jack", "Anne" },
        jquery  = '<script src="../../../js/node_modules/jquery/dist/jquery.min.js"></script>'
	})
ngx.say("nice job~!")