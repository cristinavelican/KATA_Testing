module Helpers
  
  def click_on_element xpath
    find(:xpath, xpath).click
  end

  def scroll_to(element)
    script = <<-JS
      arguments[0].scrollIntoView(true);
    JS

    Capybara.current_session.driver.browser.execute_script(script, element.native)
  end
  

end