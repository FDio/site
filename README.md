# Repository for the FDio main site.

Thos repository will be used for the FD.io main site. This site is created
using the web site renderer Hugo. For more infor mation on Hugo please visit
[Hugo](https://gohugo.io).

## Build and push changes

### First, Add your SSH Key

We suggest that you use ssh to access Github. To do that, simply
upload your public ssh key to your github account.

### Fork the FDIO/site repo

Login to the github UI at https://github.com. Navigate to the
FDIO/site repo, at https://github.com/FDio/site.

Click the fork button at the upper right. When this succeeds, you will
have a forked branch in your account. From here you will be able to
build and create a pull request.

### Clone your fork

To create a working copy of your fork, do the following:

``` console
$ git clone ssh://git@github.com/<userid>/site
Cloning into 'site'...
remote: Enumerating objects: 3, done.
remote: Counting objects: 100% (3/3), done.
remote: Compressing objects: 100% (2/2), done.
remote: Total 3 (delta 0), reused 0 (delta 0), pack-reused 0
Receiving objects: 100% (3/3), done.
$ cd site
```

### Work Locally with Hugo

To make your changes locally initialize the git submodules.

``` console
$ git submodule update --init --recursive
$
```

Then run the Hugo server locally.

``` console
$ hugo server --disableFastRender
$
```

You can then make your changes and preview them by pointing your browser to the URL
displayed from the hugo server command. 

### Push changes to your fork on Github

Edit and commit work locally. You can create local topic branch(es) if
you like, but it's not necessary.

``` console

$ git add *


```


Upload patches to your fork on Github:

```console
  $ git push origin <branch-name>  # often <branch-name> == master
```

### Create a pull request

Jump back into the Gihub UI, login, and navigate to your fork of
FDio/site. Find the "Compare & pull request" button.  Click on this
button, follow the instructions and the pull request should be
created.

The pull request will then be reviewed. You can modify pull request
content if needed. Once your changes have been reviewed and approved
the site administrators will merge your change.

### Appendix: how to commit code to a git repo (using a branch)

```console
$ git status
On branch add-to-readme
Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git checkout -- <file>..." to discard changes in working directory)

	modified:   README.md

no changes added to commit (use "git add" and/or "git commit -a")
$ git add *
$ git status
On branch add-to-readme
Changes to be committed:
  (use "git reset HEAD <file>..." to unstage)

	modified:   README.md

$ git commit -s -m "Add to the README"
[add-to-readme f81812c] Add to the README
 1 file changed, 76 insertions(+), 1 deletion(-)
$ git status
On branch add-to-readme
nothing to commit, working tree clean
$ git branch
* add-to-readme
  master
$ git push origin add-to-readme
Enumerating objects: 8, done.
Counting objects: 100% (8/8), done.
Delta compression using up to 8 threads
Compressing objects: 100% (4/4), done.
Writing objects: 100% (6/6), 1.68 KiB | 1.68 MiB/s, done.
Total 6 (delta 1), reused 0 (delta 0)
remote: Resolving deltas: 100% (1/1), done.
remote:
remote: Create a pull request for 'add-to-readme' on GitHub by visiting:
remote:      https://github.com/<userid>/site/pull/new/add-to-readme
remote:
To ssh://github.com/<userid>/site
 * [new branch]      add-to-readme -> add-to-readme
$
```
