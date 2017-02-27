require "rails_helper"

feature "View users index page", :js do
	context "Logged out user" do
	end

	context "Legged in user" do
		scenario "should see table with id, email, name, favorite-game, and action columns" do
		end

		scenario "should be taken to the edit page for any user upon clicking link" do
		end

		scenario "should see bar chart of signup dates" do
		end

		scenario "should not see see days with zero signups on the chart" do
			
		end
	end
end