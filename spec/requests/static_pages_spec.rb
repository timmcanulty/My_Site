require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the h1 'My Site'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'My Site')
    end

    it "should have the title 'Home'" do
      visit '/static_pages/home'
      page.should have_selector('title',
                        :text => "App | Home")
    end
  end

  describe "Help page" do

    it "should have the h1 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('h1', :text => 'Help')
    end

    it "should have the title 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('title',
                        :text => "App | Help")
    end
  end

  describe "About page" do

    it "should have the h1 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector('h1', :text => 'About My Site')
    end

    it "should have the title 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector('title',
                    :text => "App | About Us")
    end
  end

  describe "Contact Us" do

    it "should have the h1 'Contact'" do
      visit '/static_pages/contact'
      page.should have_selector('h1', :text => 'Contact Us')
    end

    it "should have the title 'Contact Us'" do
      visit '/static_pages/contact'
      page.should have_selector('title',
                    :text => "App | Contact Us")
    end
  end
end