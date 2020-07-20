require 'net/http'
require 'webrick'
root = File.expand_path 'C:\Ruby26-x64\bin'

2.times do 
uri = URI('http://www.wbsed.gov.in/welcome.html')
res = Net::HTTP.get_response(uri)
puts res.code
puts res.message
#puts res.body
end
class Student
  attr_accessor :first_name, :last_name, :Primary_contact_number
  def introduction (target)
    puts  "Hello #{target}#{first_name}"
  end

end

justien = Student.new
justien.first_name = "justien"
justien.introduction('Visvasam')