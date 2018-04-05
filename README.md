# lazy_mock

[![Build Status](https://travis-ci.org/Sage/lazy_mock.svg?branch=master)](https://travis-ci.org/Sage/lazy_mock)
[![Maintainability](https://api.codeclimate.com/v1/badges/b2da5f67a0955fefba0f/maintainability)](https://codeclimate.com/github/Sage/lazy_mock/maintainability)
[![Test Coverage](https://api.codeclimate.com/v1/badges/b2da5f67a0955fefba0f/test_coverage)](https://codeclimate.com/github/Sage/lazy_mock/test_coverage)
[![Gem Version](https://badge.fury.io/rb/lazy_mock.svg)](https://badge.fury.io/rb/lazy_mock)

## Rationale

In Rspec, using a mock object, the more functionality you add, the more complaints you get about unexpected messages.

Sometimes you just want an object that responds to anything you throw at it, and just stub specifc behavior.

Enter LazyMocks.

## Usage

Every method returns a new instance of LazyMock.

```ruby
my_mock = LazyMock.new
my_mock.some_method_that_doesnt_exist
=> #<MyMock>
```

It responds to everything.

```ruby
my_mock = LazyMock.new
my_mock.respond_to?(:huh?)
=> true
```

Then you can stub what you want to.

```ruby
my_mock = LazyMock.new
my_mock.stub(:something).and_return('foo')
```

Because it returns an instance of iteself, any code paths (the first traversed) will pass:

```ruby
my_mock = LazyMock.new
if my_mock.thing.other_method.another_method
  return "Test"  if my_mock.has_some_method?
else
  #not getting here..
end
```

This means that for paths in your specs which you don't care about (because you're testing one specific part) won't break when you add new functionality as you flesh out your implementation.

## License

This gem is available as open source under the terms of the
[MIT licence](LICENSE).

Copyright (c) 2018 Sage Group Plc. All rights reserved.
