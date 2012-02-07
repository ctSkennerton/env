SCRIPTDIR=~/local/scripts
JANUSDIR=~/.janus
all: bashrc janus scripts

bashrc:
		if([ -e ~/.bashrc ]); then \
			mv ~/.bashrc ~/.bashrc.old \
		fi \
		ln -s bashrc ~/.bashrc

janus:
		curl -Lo- http://bit.ly/janus-bootstrap | bash \
		if ([ -d $(JANUSDIR) ]); then \
		else \
			mkdir $(JANUSDIR) \
		fi  \
		git clone https://github.com/vim-scripts/Align.git $(JANUSDIR)

scripts:
		if([ -d $(SCRIPTDIR) ]); then \
		else \
			mkdir -p $(SCRIPTDIR) \
		fi \
		git clone https://github.com/ctSkennerton/scriptShed.git $(SCRIPTDIR)
