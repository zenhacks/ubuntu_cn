name             "ubuntu_cn"
maintainer       "Steven Yang"
maintainer_email "yangchenyun@gmail.com"
license          "Apache 2.0"
description      "Config Ubuntu for China Network Situation"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.1.0"

recipe "ubuntu_cn", "Installs and configures runit"

%w{ ubuntu debian }.each do |os|
  supports os
end

depends "apt", "~> 1.9"
