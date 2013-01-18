require 'spec_helper'

describe "StaticPages" do

  let(:base_title) {"Ruby on Rails Tutorial Sample App | "}

  describe "Home Page" do
    before {visit '/static_pages/home'}
    it {page.should have_selector 'h1', :text => 'Sample App'}
    it {page.should have_selector 'title', :text => "#{base_title}Home"}
  end

  describe "Help Page" do
    before {visit '/static_pages/help'}
    it {page.should have_selector 'h1', :text => 'Help'}
    it {page.should have_selector 'title', :text => "#{base_title}Help"}
  end

  describe "About Page" do
    before {visit '/static_pages/about'}
    it {page.should have_selector 'h1', :text => 'About Us'}
    it {page.should have_selector 'title', :text => "#{base_title}About Us"}
  end

  describe "Contact Page" do
    before {visit '/static_pages/contact'}
    it {page.should have_selector 'h1', :text => 'Contact'}
    it {page.should have_selector 'title', :text => "#{base_title}Contact"}
  end
end
