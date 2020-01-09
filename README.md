#Д.З.3
bastion_IP = 104.199.14.201 
someinternalhost_IP = 10.132.0.3
#add in ~/.ssh/appuser
#
#host bastion
#	User appuser
#	HostName 104.199.14.201
#	IdentityFile ~/.ssh/appuser
#	ForwardAgent yes
#host someinternalhost
#	HostName someinternalhost
#	User appuser
#	ForwardAgent yes
#	IdentityFile ~/.ssh/appuser
#	ProxyJump 104.199.14.201
