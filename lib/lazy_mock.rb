class LazyMock
  def method_missing(*args)
    ::LazyMock.new
  end

  def respond_to?(method, include_all = false)
    true
  end
end
