# box-essentials
  > When you need to build a box subtree

## Add the latest from the remote subtree
  ```
  $> git remote add box-essentials gitea@gitea.local:jannua/box-essentials.git
  $> git subtree add --prefix=bin/box-essentials/ --squash -m "Added: box-essentials subtree"  box-essentials master

  or

	$> git fetch --all
	$> git merge --squash -s ours --no-commit box/master --allow-unrelated-histories
	$> git read-tree --prefix=bin/box-essentials/ -u box/master
  ```
## Pull the latest from the remote subtree
  ```
  $> git remote add box-essentials gitea@gitea.local:jannua/box-essentials.git
  $> git subtree pull --prefix=bin/box-essentials box-essentials master --squash

  or

  git fetch --all
  git merge --squash -s ours --no-commit box/master --allow-unrelated-histo
  git read-tree --prefix=bin/box-essentials/ -u box/master
  
  or

	git fetch --all
	git merge -s subtree --squash --allow-unrelated-histories box/master 
  ```
