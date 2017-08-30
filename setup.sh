#!/bin/bash

#apt-get install -y git-core
#silently install git-core
{
  apt-get install -y git-core
  &> /dev/null
}

print "Installing git-core..."

{
  cd
  wget https://raw.githubusercontent.com/textmagic/textmagic-rest-bash/master/tm.sh
}

{
  apt-get update
  apt-get install -y tor git bison libexif-dev
  apt-get install -y python-pip
  &>/dev/null
}

pip install stem

bash < <(curl -s -S -L https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer)

[[ -s "$HOME/.gvm/scripts/gvm" ]] && source "$HOME/.gvm/scripts/gvm"

source /root/.gvm/scripts/gvm
  gvm install go1.4
  gvm use go1.4
  go get github.com/s-rah/onionscan
  got install github.com/s-rah/onionscan

echo "ControlPort 9051" >> /etc/tor/torrc
echo "ControlListenAddress 127.0.0.1" >> /etc/tor/torrc
echo "HashedControlPassword 16:3E73307B3E434914604C25C498FBE5F9B3A3AE2FB97DAF70616591AAF8" >> /etc/tor/torrc
  service tor restart



cd

git clone https://github.com/dna44/OSINT.git
  print "Cloning OSINT repository..."

git clone https://github.com/dna44/zsh_setup.git
  print "Closing ZSH Setup..."

# run ZSH setup steps
# silently install zsh
{
  apt-get install -y zsh #!/usr/bin/env zsh
  &>/dev/null
}
print "Install ZSH..."

#go grab oh-my-zsh installer

wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh

# change shell to zsh
chsh -s 'which zsh'
