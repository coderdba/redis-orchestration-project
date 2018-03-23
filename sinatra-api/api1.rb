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

  Dir.chdir ("/Users/myusername/twork/ansible/playbooks/redis_install")
  #retval = %x('/usr/local/bin/ansible-playbook -s /Users/myusername/twork/ansible/playbooks/redis_install/redis_std_instance_new.yml -u vagrant --extra-vars="redis_port= params[:port]"')
  retval = %x(/usr/local/bin/ansible-playbook -s /Users/myusername/twork/ansible/playbooks/redis_install/redis_std_instance_new.yml -u vagrant --extra-vars="redis_port= 6381")

end
