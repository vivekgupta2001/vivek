# == Schema Information
#
# Table name: accounts
#
#  id             :integer          not null, primary key
#  bankName       :string(255)
#  accountType    :string(255)
#  accountBalance :float
#  created_at     :datetime
#  updated_at     :datetime
#

require 'spec_helper'

describe Account do

  describe "Valid Account" do	
	  before do
	   @currency = Currency.new(longName: "Pound", shortName: "PO")
	   @currency.save
	   
	   
	   @account = Account.new(bankName: "Lloyds", accountType: "Personal",
	  								  accountBalance: 0.0)
	  end

	  it{should respond_to :bankName} 
	  it{should respond_to :accountType}
	  it{should respond_to :accountBalance}

	  describe "bankName is mandatory" do
	  	before { @account.bankName = " " }
	  	it { should_not be_valid }
	  end	

	  describe "accountType is mandatory" do
	  	before { @account.accountType = " " }
	  	it { should_not be_valid }
	  end	

	  describe "accountBalance is mandatory" do
	  	before { @account.accountBalance = " " }
	  	it { should_not be_valid }
	  end	
  end
end
