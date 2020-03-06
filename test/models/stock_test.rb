require "test_helper"

describe Stock do
  let(:stock) { Stock.new }

  it "must be valid" do
    value(stock).must_be :valid?
  end
end
