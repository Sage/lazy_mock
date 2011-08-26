class LazyMock < BasicObject
  def method_missing(*args)
    ::LazyMock.new
  end
end
