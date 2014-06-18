require 'spec_helper'

describe "UserPages" do
	subject { page }

	describe "User Pages" do
		let(:user) { FactoryGirl.create(:user) }
		before{ visit user_path(user) }
		
		it { should have_content(user.name) }
		it { should have_title(user.name) }
	end

	describe "Signup Page" do
		before{ visit signup_path }
		
		it { should have_content('Sign Up') }
		it { should have_title('Sign Up') }
	end

	describe "Signup" do
		before{ visit signup_path }

		let(:submit) { "Create my Account" }

		describe "with invalid information" do
			it "should not create a user" do
				expect{ click_button(submit) }.not_to change(User, :count)
			end
		end

		describe "with valid information" do
			before do
				fill_in "Name", with: "Example User"
				fill_in "Email", with: "foo@example.com"
				fill_in "Password", with: "foobar1"
				fill_in "Confirmation", with: "foobar1"
			end

			it "should create a user" do
				expect{ click_button(submit) }.to change(User, :count).by(1)
			end
		end
	end
end
