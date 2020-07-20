require 'net/http'
require 'webrick'
root = File.expand_path 'C:\Ruby26-x64\bin'
server = WEBrick::HTTPServer.new :Port => 1234, :DocumentRoot => root
server.mount_proc '/' do |request, response|
  response.body = 'Hello, world!'
end
# The following command will provide a hook to shutdown the server (often done with Ctrl+C)
trap('INT') {server.shutdown}

# Start the server
server.start