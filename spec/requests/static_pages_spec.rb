require 'spec_helper'

describe "Static pages" do

  let(:base_title) do
    "Ruby on Rails Sample App"
  end

  describe "Home page" do

    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => "Sample App")
    end

    it "should have the title 'Home'" do 
      visit '/static_pages/home'
      page.should have_selector('title', :text => "Ruby on Rails Sample App")
    end
    it "should not have a custom page title" do
      visit '/static_pages/home'
      page.should_not have_selector('title', :text => '| Home')
    end
  end

  describe "Help page" do 
    it "should have the content 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('h1', :text => "Help")
    end

    it "should have the title 'Help'" do
      visit '/static_pages/help' 
      page.should have_selector('title', :text => "Ruby on Rails Sample App")
    end

    it "should not have a custom page title" do
      visit '/static_pages/help/'
      page.should_not have_selector('title', :text => '| Help')
    end
  end

  describe "About page" do
    it "should have content 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector('h1', :text => "About Us")
    end

    it "should have title 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector('title', :text => "Ruby on Rails Sample App")
    end

    it "should not have custom page title" do 
      visit '/static_pages/about'
      page.should_not have_selector('title', :text => '| About Us')
    end
  end

end
