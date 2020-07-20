require 'webrick'

class Simple < WEBrick::HTTPServlet::AbstractServlet

  def do_GET(request, response)
    status, content_type, body1 = print_questions(request)

    response.status = status
    response['Content-Type'] = content_type
    response.body = body1
  end
  def print_questions(request)
  return 200, "text/html", "test"
  end
end

server = WEBrick::HTTPServer.new(:Port => 3333)
server.mount "/Simple", Simple

# Enable shutdown on C-c
trap("INT"){ server.shutdown }
server.start