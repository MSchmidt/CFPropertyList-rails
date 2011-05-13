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


License
-------

Copyright (c) 2011 Matthias Schmidt, [http://m-schmidt.eu/](http://m-schmidt.eu/)

CFPropertyList-rails is released under the MIT License


Credits
-------

Written by [Matthias Schmidt](http://www.m-schmidt.eu/)

Thanks to [Christian Kruse](https://github.com/ckruse) for
the [CFPropertyList ruby implementation](https://github.com/ckruse/CFPropertyList)!
