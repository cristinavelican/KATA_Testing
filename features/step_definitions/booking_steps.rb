Given('I am on the home page') do
    visit "https://automationintesting.online/#/"
end
  
When('I browse through the page') do
@screen.homepage.go_to_rooms_category
end
  
Then('I have the option to book a room') do
    @screen.homepage.assert_book_button_displayed
end