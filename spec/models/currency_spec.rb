require 'spec_helper'

describe Currency do
  before { @currency = Currency.new(longName: "Dollar", shortName: "USD")}
  it { should respond_to :longName}
  it { should respond_to :shortName}

  describe "currency longName cannot be empty" do
  	before { @currency.longName = " " }
  	it { should_not be_valid}
  end

  describe "currency shortName cannot be empty" do
  	before { @currency.shortName = " " }
  	it { should_not be_valid}
  end
end
