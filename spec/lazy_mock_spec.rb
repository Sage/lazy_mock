require File.expand_path('../../lib/lazy_mock', __FILE__)

describe LazyMock do
  it "responds to everything and return an instance of LazyMock" do
    (1..50).each do |n|
      method = rand(36**n).to_s(36)
      args = (1..(50-n)).to_a
      puts "Calling: #{method}(#{args.join(',')})"
      expect(subject.send(method, *args)).to be_a(LazyMock)
    end
  end

  it "tells you that it responds to everything" do
    (1..50).each do |n|
      method = rand(36**n).to_s(36)
      puts "Responds To?: #{method}"
      expect(subject.respond_to?(method)).to eq(true)
    end
  end
end
