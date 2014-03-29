# Usage:
#     $ coffee test.coffee file.html
#     {
#         "file.html": "<content of file.html>"
#     }
#     $ coffee test.coffee content=file.html
#     {
#         "content": "<content of file.html>"
#     }


fs = require 'fs'
path = require 'path'
Mustache = require 'mustache'


doc = {}
for v in process.argv[2..]
    [name, filename] = v.split '='
    # If no name was given, name and filename are the same
    filename ?= name
    doc[name] = fs.readFileSync(filename).toString()
process.stdout.write JSON.stringify doc
