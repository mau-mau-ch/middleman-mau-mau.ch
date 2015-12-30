Middleman for [mau-mau-ch.github.io](https://mau-mau-ch.github.io/)

# Setup

## Install ruby 2.2.2

Use [homebrew](http://brew.sh/) to install rbenv & ruby-build

```SHELL
brew update && brew install rbenv ruby-build
```

From rbenv:
>   To enable shims and autocompletion add to your profile:  
>   ```if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi```

```SHELL  
rbenv install 2.2.2
rbenv rehash

ruby -v # > ruby-2.2.2
```

## Install dependencies

### WeasyPrint for pdf generation

```SHELL
brew install python cairo pango gdk-pixbuf libxml2 libxslt libffi
xcode-select --install
pip install weasyprint
```

### Ruby gems

```SHELL
gem install bundler
bundle install
```

## Setup git remotes to track github-pages repo

```SHELL
git remote add gh-pages git@github.com:mau-mau-ch/mau-mau-ch.github.io.git
```

# Using Middleman

All source files are located in the source directory.

Use [scss](http://sass-lang.com/) for stylesheets. (extension: scss)  
Use [slim](http://slim-lang.com/) for html files. (extenson: slim)

To spawn a development server @ http://localhost:4567 run:

```SHELL
bundle exec middleman
```

The server will watch for file changes and reload accordingly.

# Deployment

To deploy the current state you have to commit your changes, then run the
following rake task:

```SHELL
bundle exec rake publish REMOTE_NAME=gh-pages BRANCH_NAME=master
```
