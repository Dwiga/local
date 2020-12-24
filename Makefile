conf-zsh:
	@echo ==============zsh installing==========
	@sudo apt install zsh
	@zsh --version
	@chsh -s $(shell which-zsh)
	@echo ==============restart your machine====

conf-asdf:
	@echo ==============asdf installing==========
	@git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.8.0
	@echo ". $HOME/.asdf/asdf.sh" >> ~/.zshrc

conf-nvm:
	@sudo apt install wget
	@wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash
	@echo 'export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}"  ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"' >> ~/.zshrc
	@echo '[ -s "$NVM_DIR/nvm.sh"  ] && \. "$NVM_DIR/nvm.sh" # This loads nvm' >> ~/.zshrc

git-install:
	@echo ==============git installing==========
	@sudo apt install git
	@sudo add-apt-repository ppa:git-core/ppa

ohmyzsh-install:
	@echo ==============ohmyzsh installing==========
	@sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

tmux-install:
	@echo ==============ohmyzsh installing==========
	@sudo apt install tmux

ag-install:
	@sudo apt install ag-silversearcher

python-dependency-install:
	@sudo apt-get install -y build-essential zlib1g-dev libbz2-dev bzip2 openssl libssl-dev

asdf-python:
	@asdf plugin add python
	@asdf install python latest
	@asdf install python 3.7.8

asdf-ruby:
	@asdf plugin add ruby
	@asdf install ruby latest

nvm-install:
	@nvm install 12
	@nvm use 12
	@nvm install 12.18.3