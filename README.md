# FD.io site

[![Netlify Status](https://api.netlify.com/api/v1/badges/93544297-78c1-4b9f-a542-471427115751/deploy-status)](https://app.netlify.com/sites/fdio/deploys)

This repository contains the [FD.io](https://fd.io/) main site. This site is 
hosted on [site](https://app.netlify.com/sites/fdio/overview) and created 
using the web site renderer Hugo. For more information on Hugo please visit 
[Hugo](https://gohugo.io).

# Site Governance

The FD.io main site is maintained by the FD.io community.

Anyone is welcome to contribute.

If you feel comfortable working with [Hugo](https://gohugo.io), please create a [PR on GitHub](https://github.com/FDio/site/pulls).

If you just have an idea for improvement, open an [issue on GitHub](https://github.com/FDio/site/issues).

## Who can merge changes

Each FD.io project can name up to two representatives to work on maintaining the website. The FD.io marketing committee can also name up to two representatives.

Those representatives can merge changes to the site, and manage the [Netlify](https://www.netlify.com/) config for the site.

| Name | Github ID | FD.io Project |
| --- | --- | --- |
| Luca Muscariello | [@muscariello](https://github.com/muscariello) | [HICN](https://wiki.fd.io/view/HICN) |
| Dave Barach | [@dbarach](https://github.com/dbarach) | [VPP](https://wiki.fd.io/view/VPP) |
| Mauro Sardara | [@msardara](https://github.com/msardara) | [HICN](https://wiki.fd.io/view/HICN) |
| Michal Cmarada | [@mcmarada](https://github.com/mcmarada) | [JVPP](https://wiki.fd.io/view/JVPP), [Honeycomb](https://wiki.fd.io/view/Honeycomb), [HC2VPP](https://wiki.fd.io/view/Hc2vpp) |
| Rastislav Szabo| [@rastislavszabo](https://github.com/rastislavszabo) | [GoVPP](https://wiki.fd.io/view/GoVPP) |
| Ondrej Fabry | [@ondrej-fabry](https://github.com/ondrej-fabry) | [GoVPP](https://wiki.fd.io/view/GoVPP) |
| Ole Troan | [@otroan](https://github.com/otroan) | [VPP](https://wiki.fd.io/view/VPP) |
| Hongjun Ni | [@HongjunNi](https://github.com/HongjunNi) | [Sweetcomb](https://wiki.fd.io/view/Sweetcomb) |
| Peter Mikus | [@pmikus](https://github.com/pmikus) | [CSIT](https://wiki.fd.io/view/CSIT) |
| Tibor Frank | [@tiborfrank](https://github.com/tiborfrank) | [CSIT](https://wiki.fd.io/view/CSIT) |
| Ed Warnicke | [@edwarnicke](https://github.com/edwarnicke) | [TSC](https://wiki.fd.io/view/TSC) |
| John DiGiglio | [@JDiGiglio](https://github.com/JDiGiglio) | FD.io Marketing Committee |
| Neal Hartsell | [@nealtex01](https://github.com/nealtex01)  | FD.io Marketing Committee | 

## Handling of frontpage, NEWs, etc

The FD.io frontpage is how the world sees us. We are fortunate enough to have an excellent marketing committee in FD.io.  Please make sure to include and get buy off from one of the reps of the marketing committee before merging substantive/stylistic changes to the frontpage, NEWs, etc.

# DNS Governance

## Summary

As part of the community control of the FD.io website, website reps will be given access to fd.io DNS records.

Any user with shared DNSimple access is able to add, modify and delete services and DNS records for the domain. Please be very careful to understand the power that you wield, as it truly can be used for good or evil. We prefer good.

Here are some things that you are not able to do with your access:
* Transfer a domain in to or out of your account
* Renew a domain in your account
* Register or add a domain to your account
* Enable or disable auto-renewal for domains in your account
* Delete a domain from your account
* Access any domain other than fd.io
* Manage TLS certificates
* Manage email forwards

## Security Considerations

LF will coordinate with the community to resolve any security related DNS changes that affect records managed by the community. This may be required in order to protect other services running under the *.fd.io domain that may be impacted by the attacker’s ability to perform malicious actions within the same domain space, such as setting and reading *.fd.io cookies, issuing cross-origin requests to access private or sensitive information on other *.fd.io sites using the victim’s authenticated channel, etc.

In critical situations, LF IT may suspend a community-managed DNS record without prior notice, if there is evidence that it is actively participating in ongoing attacks targeting critical project infrastructure. In any such cases, LF IT will immediately notify the community of the actions it has taken and the reasons that necessitated them.

## LF Managed Service Records
Please contact the Linux Foundation for support when modifying any LF managed records below. These records are tied to services managed for fd.io on behalf of the Linux Foundation. Modification of these records will likely break both the availability of the related service and result in confusion around which services LF is expected to provide for the project.

* awscloud.fd.io: Pointer to AWS external IP
* dev.fd.io: Pointer to Vexxhost external IP
* CNAME verification records (AWS ACM, DKIM): 4gxgyei37wvnvspctn64lqsrgqf3gbux._domainkey.fd.io, b7fc7z2rlt2sv6qhomy6yd7i4ouduxsg._domainkey.fd.io, _51c215367e72287a7faffaf40eb4cc0d.slack.fd.io, _87915a274e117de49cfe1b16e8065487.jira.fd.io, _b989f43e4e8206c0da130747f1336847.opengrok.fd.io, _be9db9a5f23c5643388d8ff0b28cdd7b.sonar.fd.io
* apt.fd.io
* git.fd.io: Cgit UI
* wiki.fd.io
* docs.fd.io
* email.fd.io: mailgun email forwarding
* gerrit.fd.io
* jenkins.fd.io
* jira.fd.io
* logs.fd.io
* nexus.fd.io
* opengrok.fd.io
* slack.fd.io
* sonar.fd.io
* status.fd.io
* yul-vpn.fd.io
* yum.fd.io
* zuul.fd.io
* MX Records (mailgun email forwarding)
* NS Records (@ and lists.fd.io)
* TXT records: fd.io, 200608._domainkey.fd.io, _amazonses.fd.io, _domainkey.fd.io, k1._domainkey.fd.io required for incoming/outgoing mail

# Mechanics

## Build and push changes

### First, Add your SSH Key

We suggest that you use ssh to access GitHub. To do that, simply
upload your public ssh key to your GitHub account.

### Fork the FDio/site repo

Login to the GitHub UI at https://github.com. Navigate to the
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
Submodule 'themes/airspace-hugo' (https://github.com/themefisher/airspace-hugo.git) registered for path 'themes/airspace-hugo'
Cloning into '/Developer/hugo/site/themes/airspace-hugo'...
Submodule path 'themes/airspace-hugo': checked out '207d048784e04bfef6564615ff6addfb35480611'
$
```

Then run the Hugo server locally.

``` console
$ hugo server --disableFastRender

                   | EN
+------------------+----+
  Pages            | 42
  Paginator pages  |  0
  Non-page files   |  0
  Static files     | 96
  Processed images |  0
  Aliases          | 11
  Sitemaps         |  1
  Cleaned          |  0

Total in 40 ms
Watching for changes in /Developer/hugo/site/{assets,content,data,layouts,static,themes}
Watching for config changes in /Developer/hugo/site/config.toml
Serving pages from memory
Web Server is available at //localhost:1313/ (bind address 127.0.0.1)
Press Ctrl+C to stop
$
```

You can then make your changes and preview them by pointing your browser to the URL
displayed from the hugo server command. 

### Push changes to your fork on GitHub

Edit and commit work locally. You can create local topic branch(es) if
you like, but it's not necessary.

``` console
$ git add *
$ git commit -s -m "Add a descriptive comment here"
$
```

Upload patches to your fork on Github:

```console
$ git push origin <branch-name>  # often <branch-name> == master
```

### Create a pull request

Jump back into the GitHub UI, login, and navigate to your fork of
FDio/site. Find the "Compare & pull request" button.  Click on this
button, follow the instructions and the pull request should be
created.

The pull request will then be reviewed. You can modify pull request
content if needed. Once your changes have been reviewed and approved
the site administrators will merge your change.

### Appendix: how to commit code to a git repo (using a branch)

```console
$ git remote add upstream ssh://git@github.com/FDio/site
$ git remote -v
origin	ssh://git@github.com/<username>/site (fetch)
origin	ssh://git@github.com/<username>/site (push)
upstream	ssh://git@github.com/FDio/site (fetch)
upstream	ssh://git@github.com/FDio/site (push)
$ git fetch upstream
$ git merge upstream/master
$
$ # Make your changes
$
$ git checkout -b add-to-readme
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
```
