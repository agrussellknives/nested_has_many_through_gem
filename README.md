## NOTE: rails 2.3 users might want to try the experimental rails-2.3 branch

## This is a gemified version of the nested_has_many_through plugin

# nested_has_many_through_gem

## History

Here's the original description:

  This plugin makes it possible to define has_many :through relationships that
  go through other has_many :through relationships, possibly through an
  arbitrarily deep hierarchy. This allows associations across any number of
  tables to be constructed, without having to resort to find_by_sql (which isn't
  a suitable solution if you need to do eager loading through :include as well).

## Contributors

* Matt Westcott
* terceiro
* shoe
* mhoroschun
* Ian White (http://github.com/ianwhite)
* Claudio (http://github.com/masterkain)
* releod (http://github.com/releod)

Get in touch if you should be on this list

## Show me the money!

Here's some models from the specs:

  class Author < User
    has_many :posts
    has_many :categories, :through => :posts, :uniq => true
    has_many :similar_posts, :through => :categories, :source => :posts
    has_many :similar_authors, :through => :similar_posts, :source => :author, :uniq => true
    has_many :posts_of_similar_authors, :through => :similar_authors, :source => :posts, :uniq => true
    has_many :commenters, :through => :posts, :uniq => true
  end
  
  class Post < ActiveRecord::Base
    belongs_to :author
    belongs_to :category
    has_many :comments
    has_many :commenters, :through => :comments, :source => :user, :uniq => true
  end
  
The first two has_manys of Author are plain vanilla, the last four are what this plugin enables

  # has_many through a has_many :through
  has_many :similar_posts, :through => :categories, :source => :posts

  # doubly nested has_many :through 
  has_many :similar_authors, :through => :similar_posts, :source => :author, :uniq => true

  # whoah!
  has_many :posts_of_similar_authors, :through => :similar_authors, :source => :posts, :uniq => true

  # has_many through a has_many :through in another model
  has_many :commenters, :through => :posts, :uniq => true

## What does it run on?

Currently tested on Rails 3.0.10 - this functionality is included in Rails 3.1 so you 
won't need it after you upgrade.
