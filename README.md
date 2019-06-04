# Repository for the FDio main site.

Thos repository will be used for the FD.io main site. This site is created
using the web site renderer Hugo. For more infor mation on Hugo please visit
[Hugo](https://gohugo.io).

## Build and push changes

### Fork your branch

When logged into your github account fork your own branch. This is down by
first signing into your github account. Once this is done go to
[Your Github Account](https://github.com/FDio/site). At the right at the top
of the page click on the fork button. When this succeeds you will have a forked
branch in your account. From here you will be able to build and create a pull
request from your account.

### Add your SSH Key

To use this repo you will need to add 2 factor authentication to your github account.
Then the easiest way to access tyour fork is to use ssh. You will need to add your
publix ssh key to your github account.

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

For the pull request you should create a branch with:

``` console
$ git checkout -b add-more-to-readme
M	README.md
Switched to a new branch 'add-more-to-readme'
$ git branch
* add-more-to-readme
  master
$
```

Now you can make your changes locally. Then to create the pull request you can
do the foolwoing.

### Create the Pull Request

After making your changes create the pull request by pushing your changes.

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

$ git commit -m "Add to the README"
[add-to-readme f81812c] Add to the README
 1 file changed, 76 insertions(+), 1 deletion(-)
$ git status
On branch add-to-readme
nothing to commit, working tree clean
$ git branch
* add-to-readme
  master
$ git push origin add-to-readme
$
```

Then from your browser, from your account find the "CREATE PULL REQUEST" button.



