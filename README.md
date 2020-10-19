# KATA Testing

## Framework structure

The below framework can be used for UI automation, using Ruby and Capybara (a Ruby gem/library similar to Selenium that can be used for UI automation)

### helpers

The helpers.rb is a class where you can add general methods used within different test cases (e.g. click methods, find methods, etc)

### pages

In this folder you will add classes for each of your project pages (following the POM structure)
We have already added `home_page.rb` where you can add the methods and elements (together with their locators) for the HomePage/MainPage of this application

PageFactory is a bundle page, where you create objects for each of the defined project classes (e.g. @homepage for HomePage class)

### step definitions

In this folder you will store all the step definitions for the BDD scenarios created

### support

In the support folder you have the env.rb file in which project configurations are stored (e.g. related to the browser).
Hooks.rb contains actions that can be done before or after your scenario is run (clear cookies, create the @screen main object of the project, add screenshots after the scenario passes/fails, etc.)
Modyfing any of the files here, it is not in the scope of this KATA

### feature file

In this feature file you will add the BDD scenarios for the below requests

## Instructions

Using our scenario as an example, write and execute BDD scenarios for the following situations:
* Book a room for a period of 2 nights by filling the information needed (first name, last name, email, phone) and clicking Book now. Test is successful if you get a pop-up "Booking successful. Congratulations! Your booking has been confirmed for: xxx-xxx(period)"
* If the desired period is already occupied, select a different one
* Check that the date in the successful booking pop-up corresponds with the date that you have selected

In order to install all the necesary gems (ruby libraries) for this project you need to run the following commands in a terminal (which being located inside the project path):
`gem install bundler`
`bundle install`

The second command will install all the dependencies/gems defined in the Gemfile

### Useful resources:
* https://gist.github.com/tomas-stefano/6652111 (capybara cheet-sheet)
* https://blog.morizyun.com/blog/capybara-selenium-webdriver-ruby/index.html
* https://itsadeliverything.com/declarative-vs-imperative-gherkin-scenarios-for-cucumber




