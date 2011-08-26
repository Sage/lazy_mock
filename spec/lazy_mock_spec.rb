require File.expand_path('../../lib/lazy_mock', __FILE__)

describe LazyMock do
  it { should be_a BasicObject }
  it { should_not be_an Object }

  it "should respond to everything and return itself" do
    (1..50).each do |n|
      method = rand(36**n).to_s(36)
      args = (1..(50-n)).to_a
      puts "Calling: #{method}(#{args.join(',')})"
      subject.send(method, *args).should == subject
    end
  end

  it "should tell you that it responds to everything" do
    (1..50).each do |n|
      method = rand(36**n).to_s(36)
      puts "Responds To?: #{method}"
      subject.respond_to?(method).should be_true
    end
  end
end
