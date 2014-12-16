# capistrano3-git-push

This Capistrano (v3) task ask for the commit message and then makes
```
git add -A
git commit -m '#{message}'
git push
```
if there are any changes. You can skip it by typing ``` skip ``` when you are asked for the commit message. It is very handy to make it
``` ruby
before :deploy, 'git:push'
```
in ``` config/deploy.rb ```.

## Installation

Add this line to your application's Gemfile:

```ruby
group :development do
	gem 'capistrano-git-push'
end
```

And then execute:

    $ bundle

And then add ``` require 'capistrano3/git-push' ``` to your ``` Capfile ```

## My other works

Take a look at my [capistrano3-ubuntu-server-prepare](https://github.com/goooseman/capistrano3-ubuntu-server-prepare) (it can install Nginx, PostgreSQL, Redis, RVM, Rails, Bundler, Imagemagick and do some other helpfull things to prepare your blank Ubuntu server for the first deploy) Capistrano (v3) gems.