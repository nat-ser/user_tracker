require "rails_helper"

feature "View registration page", :js do
	context "New user" do
		scenario "should see a form with email, password, and password confirmation" do
		end
		scenario "should be automatically logged in after successful registration" do
		end

		scenario "should see error message if the email is not properly formatted " do
		end

		scenario "should see error message if the email is not unique" do
		end

		scenario "should see error message if password is less than 6 characters" do
		end

		scenario "should see error if password does not contain a capital letter" do
		end

		scenario "should see error is password has no non-letter characters" do
		end

		scenario "should be taken to the user dashboard after registration" do
		end
	end
end
