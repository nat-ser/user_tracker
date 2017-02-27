require "rails_helper"

feature "View home page", :js do
	let(:user) { User.create(name: "Nat", email: "email@email.com", fave_game: "PoE")}
	context "Logged out new user" do

		scenario "should see the registration link at the bottom" do
		end

		scenario "should be taken to signup page when she clicks on the registration link" do
		end


	end

	# context "Logged out existing user" do
	# 	scenario "should be able to log in with email and password" do
	# 		visit root_path

	# 		fill_in "Email", with "user@example.com"
	# 		fill_in "Password", with "Password!"

	# 		click_button "Sign in"

	# 		expect(page).to have_content "Welcome Nataliya"
	# 	end
	# end

	# context "Logged in user" do
	# end
end
