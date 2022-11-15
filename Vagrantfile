Vagrant.configure("2") do |config|
  # Local box cuz cloud not working from Russia kekw
  config.vm.box = "ubuntu-20.04"

  # Install nginx
  config.vm.provision "shell", path: "install_nginx.sh"

  # Site
  config.vm.provision "file", source: "./demo", destination: "$HOME/sites/demo"

  # Nginx conf copy to home dir
  config.vm.provision "file", source: "./nginx.conf", destination: "$HOME/nginx.conf"

  # Move nginx conf with priveleges
  config.vm.provision "shell",
    inline: "mv /home/vagrant/nginx.conf /etc/nginx/nginx.conf"

  # 'reload' nginx
  config.vm.provision "shell",
   inline: "systemctl stop nginx"
  config.vm.provision "shell",
   inline: "systemctl start nginx"

  # Networking
  config.vm.network "forwarded_port", guest: 80, host: 8080, id: "nginx"
end
