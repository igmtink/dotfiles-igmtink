# Ubuntu 22.04.1

### Requirements
Git:
```fish
sudo apt install git
```

Nodejs: 
```fish
curl -fsSL https://deb.nodesource.com/setup_19.x | sudo -E bash - &&\
sudo apt-get install -y nodejs
```

GCC Complier: 
```fish
sudo apt install build-essential
```

Fish Shell:
```bash
sudo apt-add-repository ppa:fish-shell/release-3
sudo apt update
sudo apt install fish

chsh -s $(which fish)
```
