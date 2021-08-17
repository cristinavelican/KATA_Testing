# KATA Testing

## How to work with the framework?
* Make a github account
* Fork the framework into your own domain or download it locally on your computer
* Read the below information and use the resources mentioned to get used to the programming languages and the best practices to be apply while coding

## Prerequisites
* Install Ruby locally: https://stackify.com/install-ruby-on-windows-everything-you-need-to-get-going/
* Install the bundler gem (command in the terminal : gem install bundler)
* Go to the location of your newly cloned / downloaded framework and do a bundle install to install all the necessary gems

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
* Book a room from https://automationintesting.online/#/ for a period of 2 nights by filling the information needed (first name, last name, email, phone) and clicking Book now. Test is successful if you get a pop-up "Booking successful. Congratulations! Your booking has been confirmed for: xxx-xxx(period)"
* Check that the date in the successful booking pop-up corresponds with the date that you have selected

<em>Below scenario only required for advanced</em>
* If the desired period is already occupied, select a different one (e.g.: In the below example the period 3-5 May appears as Unavailable, so we will select the period immediate after that is available e.g. 5-7 May)
<img width="487" alt="proof" src="https://user-images.githubusercontent.com/12544803/115431373-8253d380-a205-11eb-9339-39a57af24679.PNG">


In order to install all the necesary gems (ruby libraries) for this project you need to run the following commands in a terminal (which being located inside the project path):
`gem install bundler`
`bundle install`

The second command will install all the dependencies/gems defined in the Gemfile

You can run a scenario from the terminal/command line and being located in the project path with the following:

`cucumber -t "@book"`
where @book represents the tag you have added for you scenario

### Useful resources:
* https://gist.github.com/tomas-stefano/6652111 (capybara cheet-sheet)
* https://blog.morizyun.com/blog/capybara-selenium-webdriver-ruby/index.html
* https://itsadeliverything.com/declarative-vs-imperative-gherkin-scenarios-for-cucumber




