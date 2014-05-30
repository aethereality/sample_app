require 'spec_helper'

describe "Static Pages" do
let(:base_title) { "Ruby on Rails Tutorial" }

	describe "Home Page" do
		it "Should have the content 'Sample App'" do
			visit root_path
			expect(page).to have_content('Sample App')
		
		end
		
		it "Should have the right title" do
			visit root_path
			expect(page).to have_title("#{base_title}")
		end

		it "Should not have a custom title" do
			visit root_path
			expect(page).not_to have_title('| Home')
		end
	end
	
	describe "Help Page" do
		it "Should have the content 'Help'" do
			visit help_path
			expect(page).to have_content('Help')

		end

		it "Should have the right title" do
			visit help_path
			expect(page).to have_title("#{base_title} | Help")
		end

	end
	
	describe "About Page" do
		it "Should have the content 'About Us'" do
			visit about_path
			expect(page).to have_content('About Us')

		end

		it "Should have the right title" do
			visit about_path
			expect(page).to have_title("#{base_title} | About Us")
		end

	end


	describe "Contact Page" do
		it "Should have the content 'Contact'" do
			visit contact_path
			expect(page).to have_content('Contact')

		end

		it "Should have the right title" do
			visit contact_path
			expect(page).to have_title("#{base_title} | Contact")
		end

	end
end
