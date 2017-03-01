# frozen_string_literal: true
require "rails_helper"

feature "View registration page", :js do
  let(:existing_user) { User.create(email: "email_exists@email.com", password: "Password!") }

  before do
    visit new_user_registration_path
  end
  context "New user" do
    scenario "should be able to sign up via registration link on the bottom" do
      fill_in "Email", with: "user@example.com"
      fill_in "Password", with: "Password!22"
      fill_in "Password confirmation", with: "Password!22"

      click_button "Sign up"

      expect(page).to have_content "Welcome! You have signed up successfully."
      expect(current_path).to eq root_path
    end

    scenario "should see error message if the email is not unique" do
      fill_in "Email", with: existing_user.email
      fill_in "Password", with: "Password!22"
      fill_in "Password confirmation", with: "Password!22"

      click_button "Sign up"

      expect(page).to have_content "Email has already been taken"
    end

    scenario "should see error message if password is less than 6 characters" do
      fill_in "Email", with: "user@example.com"
      fill_in "Password", with: "Pas!"
      fill_in "Password confirmation", with: "Pas!"

      click_button "Sign up"

      expect(page).to have_content "Password must have at least 6 letters, 1 uppercase letter, and 1 non-letter character"
    end

    scenario "should see error message if password doesn't contain Capital" do
      fill_in "Email", with: "user@example.com"
      fill_in "Password", with: "password!"
      fill_in "Password confirmation", with: "password!"

      click_button "Sign up"

      expect(page).to have_content "Password must have at least 6 letters, 1 uppercase letter, and 1 non-letter character"
    end

    scenario "should see error is password has no non-letter characters" do
      fill_in "Email", with: "user@example.com"
      fill_in "Password", with: "password!"
      fill_in "Password confirmation", with: "Password"

      click_button "Sign up"

      expect(page).to have_content "Password must have at least 6 letters, 1 uppercase letter, and 1 non-letter character"
    end
  end
end
