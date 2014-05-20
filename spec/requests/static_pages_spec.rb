require 'spec_helper'

describe "Static Pages" do
	describe "Home Page" do
		it "Should have the content 'Sample App'" do
			visit '/static_pages/home'
			expect(page).to have_content('Sample App')
		
		end
		
		it "Should have the right title" do
			visit '/static_pages/home'
			expect(page).to have_title('Ruby on Rails Tutorial | Home')
		end

	end
	
	describe "Help Page" do
		it "Should have the content 'Help'" do
			visit '/static_pages/help'
			expect(page).to have_content('Help')

		end

		it "Should have the right title" do
			visit '/static_pages/help'
			expect(page).to have_title('Ruby on Rails Tutorial | Help')
		end

	end
	
	describe "About Page" do
		it "Should have the content 'About Us'" do
			visit '/static_pages/about'
			expect(page).to have_content('About Us')

		end

		it "Should have the right title" do
			visit '/static_pages/about'
			expect(page).to have_title('Ruby on Rails Tutorial | About Us')
		end

	end
end
