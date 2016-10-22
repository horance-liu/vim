# vim-plugins

The collection of vim plugins.

## Backup

```bash
$ mv ~/.vimrc ~/.vimrc-bak
$ mv ~/.vim ~/.vim-bak 
```

## Install

```sh
$ git clone git@github.com:horance-liu/vim-plugins.git ~/.vim
$ cd ~/.vim
$ cp .vimrc ..
```

## Install RVM

- 修改RVM源

```bash
$ echo "ruby_url=https://ruby.taobao.org/mirrors/ruby" > ~/.rvm/user/db 
```

## Command-t

- open vim, and to seee ruby version

```bash
:ruby puts "#{RUBY_VERSION}-p#{RUBY_PATCHLEVEL}"
2.0.0-p648
```

- to see system ruby version 

```bash
$ ruby --version
2.2.1p85
```

- so, to install ruby version of vim

```bash
$ rvm install 2.0.0-p648
$ rvm use 2.0.0-p648
```

- compile command-t

```bash
$ cd ~/.vim/bundle/command-t/ruby/command-t
$ ruby extconf.rb
$ make
```

