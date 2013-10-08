require 'spec_helper'

describe "CompaniesPages" do
  subject { page }

  describe "GET /companies_pages" do
    	before do
    		 company = Company.new(registeredName: "VivekSoft", 
  								  registeredAddress: "109 UK",
  								  vatNumber: "GB1094",
  								  email: "VivekSoft@gb.com")
    		 visit company_path(company)
    	end	 
    	it { should have_selector('h1', text: 'Companies') }
    	it { should have_selector('title', text: 'Companies')}
   end
end
