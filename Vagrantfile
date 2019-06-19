netAddr = "192.168.33"
os      = "ubuntu/bionic64"

Vagrant.configure(2) do |config|
  (1..2).each do |ansibleMachine|
    config.vm.define "client-#{ansibleMachine}" do |ansible|
      ansible.vm.hostname = "client-#{ansibleMachine}"
      ansible.vm.box = "#{os}"
      ansible.vm.network "private_network", ip: "#{netAddr}.#{ansibleMachine+199}"

      ansible.vm.provider :virtualbox do |a|
        a.cpus   = 2
        a.memory = 512
      end
    end
  end
end