require 'spec_helper'

describe "StaticPages" do

  describe "Home page" do
    it "should have content Personal assistant" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/static_pages/home'
      page.should have_content('Personal assistant')
    end
  end

   describe "Help page" do
    it "should have content Help" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/static_pages/help'
      page.should have_content('Help')
    end
  end

  describe "About page" do
    it "should have content About" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/static_pages/about'
      page.should have_content('About')
    end
  end

  describe "home page" do
    it "should have title Home" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/static_pages/home'
      page.should have_selector('title', :text => "PersonalAssistant home")
    end
  end

describe "Help page" do
    it "should have title PersonalAssistant help" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/static_pages/help'
      page.should have_selector('title', :text => "PersonalAssistant help")
    end
  end

 describe "About page" do
    it "should have title PersonalAssistant about" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/static_pages/about'
      page.should have_selector('title', :text => "PersonalAssistant about")
    end
  end
end
