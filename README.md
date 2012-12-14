CFPropertyList-rails
====================

Render CFPropertyLists in Rails3 apps. Plists are generated in binary format.

Binary Plists are small in size and therefore ideal for usage with mobile iOS clients, such as iPhone and iPad.


Usage
-----

In your Gemfile:

``` ruby
gem 'CFPropertyList-rails'
```

In a controller, use something like this:

``` ruby
respond_to do |format|
  format.html
  format.plist { render :plist => posts }
end
```

You can use all the options you would use with the json renderer, e.g.:

``` ruby
respond_to do |format|
  format.plist { render :plist => posts, :include => :comments }
end
```

There is an additional option you can use to skip the serialization done by the gem.
This is useful in situations when a custom serialization was applied before:

``` ruby
respond_to do |format|
  posts = posts.as_json(:include => :comments)
  format.plist { render :plist => posts, :skip_serialization => true }
end
```


Changelog
---------

* **1.0.1** - 14.12.2012
  * update dependency to CFPropertyList ~> 2.2.0

* **1.0.0** - 08.02.2012
  * add skip\_serialization option
  * remove old monkey path since CFPropertyList has fixes included since 2.0.17

* **0.0.1** - 12.05.2011
  * initial release


License
-------

Copyright (c) 2011-2012 Matthias Schmidt, [http://m-schmidt.eu/](http://m-schmidt.eu/)

CFPropertyList-rails is released under the MIT License


Credits
-------

Written by [Matthias Schmidt](http://www.m-schmidt.eu/)

Thanks to [Christian Kruse](https://github.com/ckruse) for
the [CFPropertyList ruby implementation](https://github.com/ckruse/CFPropertyList)!
