$:.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))

require "rspec-abhakungszeichen-formatter"

# Just to demonstrate its output

describe RspecAbhakungszeichenFormatter do
  context "test spec" do

    context "context 1" do
      it "works" do
        1.should == 1
      end

      pending "is pending" do
      end
    end

    context "context 2" do
      it "works too" do
        1.should ==1
      end

      it "fails" do
        1.should == 42
      end
    end
  end
end
