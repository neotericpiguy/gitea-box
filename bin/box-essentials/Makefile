PROJECT_DIR=$(shell git rev-parse --show-toplevel)
#https://developer.atlassian.com/blog/2015/05/the-power-of-git-subtree/

all: aci
	echo $(PROJECT_DIR)

aci:
	$(PROJECT_DIR)/bin/rkt --pod --rebuild

install: aci
	$(PROJECT_DIR)/bin/rkt install /data/xvid,/data/xvid

add-remotes:
	git remote add box ../box-essentials

update:
#	git fetch --all
#	git merge -s subtree --squash --allow-unrelated-histories box/master 
	rm bin/box-essentials -rf
	git cm -am "Removed: subtree" 
	git fetch --all
	git merge --squash -s ours --no-commit box/master --allow-unrelated-histories
	git read-tree --prefix=bin/box-essentials/ -u box/master
	git reset HEAD~1

subtree-init:
	git subtree add --squash --prefix=bin/box-essentials box master

subtree-push:
	#make commit in to box

subtree-update:
	git subtree pull --squash --prefix=bin/box-essentials box master

#git reset --hard master; git rm bin/box-essentials -rf; git cm -am "Removed: subtree" ; make init

init:
	git fetch --all
	git merge --squash -s ours --no-commit box/master --allow-unrelated-histories
	git read-tree --prefix=bin/box-essentials/ -u box/master
#	git merge --prefix=bin/box-essentials/ --squash -s subtree --no-commit box/master --allow-unrelated-histories

clean:
	-rm -rf $(PROJECT_DIR)/build

rkt-clean:
	sudo rkt gc --grace-period=0
	sudo rkt image gc --grace-period=0
