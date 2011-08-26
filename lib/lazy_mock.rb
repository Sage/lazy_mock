class LazyMock < BasicObject
  def method_missing(*args)
    self
  end
end
