# frozen_string_literal: true
require "rails_helper"

feature "View home page", :js do
  let!(:user) { User.create(email: "email@email.com", password: "Password!") }

  before do
    visit root_path
  end

  context "Logged out new user" do
    scenario "should be taken to signup page when she clicks on the registration link" do
      click_link "Sign up"

      expect(current_path).to eq new_user_registration_path
    end

    scenario "should not be able to log without signing up" do
      fill_in "Email", with: "email_not@example.com"
      fill_in "Password", with: "Passwordnott!"
      click_button "Log in"

      expect(page).to have_content "Invalid Email or password."
      expect(current_path).to eq new_user_session_path
    end
  end

  context "Logged out existing user" do
    scenario "should not be authorized to see users index page without logging in or signing up" do
      expect(current_path).to eq new_user_session_path
      expect(page).to have_content "You need to sign in or sign up before continuing."
    end

    scenario "should be able to log in with email and password" do
      fill_in "Email", with: user.email
      fill_in "Password", with: user.password
      click_button "Log in"

      expect(page).to have_content "Signed in successfully."
      expect(current_path).to eq root_path
    end
  end
end
