# Overview

This project is a way to jump start django projects at hackathons (or
really anywhere). It provides some basic bootstrap templates and
integrates with python social auth to give you access to standard social
logins.

The app runs in vagrant so your whole team should be able to get up
to date quickly

## Prerequisites

It assumes that you have Vagrant and fabric installed:

```bash
$ vagrant -v
Vagrant 1.7.2

$ fab --version
Fabric 1.10.1
Paramiko 1.15.2
```

If you don't have vagrant installed you can grab it at:

```
https://vagrantup.com
```

If fabric isn't installed you can install it with:

```
[sudo] pip install fabric
```

## Bootstraping

When you first get the repo you can bootstrap your app by running:

```bash
./install.sh <name of project> <name of app>

# Such as:
./install.sh adopta hydrant
```

This will create the Django app skeleton in the folter "adopta". Once
that runs you can delete the original template folder and the ".git" folder

# Getting the VM up and running

```bash
vagrant up
fab vagrant venv
fab vagrant migrate
fab vagrant manage:createsuperuser
```

If you update the requirements.txt file you'll need to run `fab vagrant
reqs`

# Running the server

```bash
fab vagrant server
```

And you should be able to go to http://localhost:9123/ to see the
running app.

# License

MIT License
