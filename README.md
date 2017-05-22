# Docker Hub Link
https://hub.docker.com/r/andoshin11/rails_base/

# What is this?
Docker Image for Ruby on Rails Developers.
From this Docker Image, you can easily build your own Rails development.

More Info →

**Warning :**
This Docker Image doesn't work alone. You need to setup Ruby on Rails and MySQL/SQLite environment besides this image.

# What's included?
This Docker Image includes:
- Ruby 2.3.1
- Bundler
- Node.js
- Yarn

# What's NOT included?
This Docker Image doesn't include:
- Ruby on Rails
- MySQL/SQLite

# How to Use
You can either clone or pull this image. Choose the way suits your need the most.

1. Clone this image and build the image by yourself

```
$ git clone https://github.com/andoshin11/dockerfile-rails_base.git ~/dev/your_rails_project
$ cd ~/dev/your_rails_project/dockerfile-rails_base
$ docker build -t name:tag .
```

2. Pull from Docker Hub <Recommended>
```
$ docker pull andoshin11/rails_base
```
