# User tracker

- devise for authentication
- custom password validation
- chartkick for the column chart
- tests with rspec, selenium, and capybara
- bootstrap

#### To Run

1) cd into project folder and run `bundle`
2) `rake db:migrate`
3) `rake db:seed`

#### To Test

1) Run `rspec`

##### Areas for improvement
- Add pagination to the table of users on the home page
- Separate error messages for the password validations for min_length, capital letter, and non-letter requirements
- Finish tests
