class HomePage < Screen
  include Helpers

   #include here all the elements and the methods from the HomePage
   ROOMS_CATEGORY_IDENTIFIER = "//h2"
   BOOK_ROOM_BUTTON = "//button[contains(@class,'openBooking')]"

   def go_to_rooms_category
    scroll_to(page.find(:xpath,ROOMS_CATEGORY_IDENTIFIER, visible: true))
   end

   def assert_book_button_displayed
      expect(page).to have_xpath(BOOK_ROOM_BUTTON, visible: true)
   end

end