require 'spec_helper'
require 'securerandom'

describe LazyMock do
  it "responds to everything and return an instance of LazyMock" do
    (1..50).each do |n|
      method = SecureRandom.hex(n)
      args = (1..(50-n)).to_a
      puts "Calling: #{method}(#{args.join(',')})"
      expect(subject.send(method, *args)).to be_a(LazyMock)
    end
  end

  it "tells you that it responds to everything" do
    (1..50).each do |n|
      method = SecureRandom.hex(n)
      puts "Responds To?: #{method}"
      expect(subject).to respond_to(method)
    end
  end
end
