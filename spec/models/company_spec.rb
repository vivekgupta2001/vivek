# == Schema Information
#
# Table name: companies
#
#  id                :integer          not null, primary key
#  registeredName    :string(255)
#  registeredAddress :string(255)
#  vatNumber         :string(255)
#  email             :string(255)
#  created_at        :datetime
#  updated_at        :datetime
#

require 'spec_helper'

describe Company do
  before { @company = Company.new(registeredName: "VivekSoft", 
  								  registeredAddress: "109 UK",
  								  vatNumber: "GB1094",
  								  email: "VivekSoft@gb.com")}
  subject { @company }

  it {should respond_to(:registeredName)}
  it { should respond_to(:registeredAddress)}
  it { should respond_to(:vatNumber)}
  it { should respond_to(:email)}

  describe "when registeredName is not present" do
  	before { @company.registeredName = " "}
  	it { should_not be_valid }
  end	
  describe "when registeredAddress is not present" do
  	before { @company.registeredAddress = " "}
  	it { should_not be_valid }
  end	
  describe "when vatNumber is not present" do
  	before { @company.vatNumber = " "}
  	it { should_not be_valid }
  end	
  describe "when vatNumber is not greater than 10 characters" do
  	before { @company.vatNumber = "a" * 11 }
  	it { should_not be_valid }
  end	
  describe "when registeredName is already taken" do
  	before do 
  		company_with_same_registeredName = @company.dup
  		company_with_same_registeredName.save
  	end	
  	it { should_not be_valid }
  end	
end
