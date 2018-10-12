#
# Cookbook:: docker
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.




bash 'Execute my script' do 
  cwd  '/root'
  code <<-EOH
  curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
  sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"    
  sudo apt-get update
  apt-cache policy docker-ce
  sudo apt-get install -y docker-ce
  sudo systemctl status docker

  EOH
end
bash 'Execute my script' do 
  cwd  '/root'
  code <<-EOH
  
  sudo curl -L https://github.com/docker/compose/releases/download/1.18.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
  sudo chmod +x /usr/local/bin/docker-compose
  docker-compose --version
  EOH
end


