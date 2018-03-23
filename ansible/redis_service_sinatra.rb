require 'sinatra'
require 'fileutils'

get "/find/:id" do

  File.open(params[:id], 'w+') do |file|
    file.write(params[:id])
    file.write(request.body.read)
  end

  "Hello param " + params[:id]

end


post "/create/:port" do

 #Dir.chdir ("/Users/username/twork/ansible/playbooks/redis_install")
 retval = %x(ansible-playbook -s redis_std_instance_new.yml -u vagrant --extra-vars="redis_port=params[:id]")

  ""
  ""
  ""
  " Hello - your return value is " + retval

end
