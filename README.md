# Repository for the FDio main site.

Thos repository will be used for the FD.io main site. This site is created
using the web site renderer Hugo. For more infor mation on Hugo please visit
[Hugo](https://gohugo.io).

## Build and push changes

### Fork your branch

When logged into your github account fork your own branch. This is done by
first signing into your github account. Once this is done go to
[Your Github Account](https://github.com/FDio/site). At the right at the top
of the page click on the fork button. When this succeeds you will have a forked
branch in your account. From here you will be able to build and create a pull
request.

### Add your SSH Key/2 Factor Authentication

To use this repo you will need to enable 2 factor authentication to your github account.
Once this is done the best way to access tyour fork is to use ssh. You will need to add
a public ssh key to your github account.

### Create your clone

To create your your copy do the following:

``` console
$ git clone ssh://git@github.com/jadenisco/site
Cloning into 'site'...
remote: Enumerating objects: 3, done.
remote: Counting objects: 100% (3/3), done.
remote: Compressing objects: 100% (2/2), done.
remote: Total 3 (delta 0), reused 0 (delta 0), pack-reused 0
Receiving objects: 100% (3/3), done.
$ cd site
$
```

Connect to the upstream repo with:

``` console
$ git remote -v
origin	https://github.com/<Your Github Username>/site (fetch)
origin	https://github.com/<Your Github Username>/site (push)
$ git remote add upstream https://github.com/FDio/site
$ git remote -v
origin	https://github.com/<Your Github Username>/site (fetch)
origin	https://github.com/<Your Github Username>/site (push)
upstream	https://github.com/FDio/site (fetch)
upstream	https://github.com/FDio/site (push)
$ git fetch upstream
From https://github.com/FDio/site
 * [new branch]      master     -> upstream/master
$ git merge upstream/master
Already up to date.
$
```

### Create a branch

For the pull request you should create a branch.

``` console
$ git checkout -b add-more-to-readme
M	README.md
Switched to a new branch 'add-more-to-readme'
$ git branch
* add-more-to-readme
  master
$
```

### Create the Pull Request

Now you can make your changes locally. Then to create the pull request.

``` console
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
remote:      https://github.com/jadenisco/site/pull/new/add-to-readme
remote:
To ssh://github.com/jadenisco/site
 * [new branch]      add-to-readme -> add-to-readme
$
```

Then from your browser, from your account find the "Compare & pull request" button.
Click on this button, follow the instructions and the pull request should be created.

The pull request will then be reviewed. You will be allowed to modify your changes if
needed. Once your changes have been reviewed and approved the site
administrators will merge your change.

