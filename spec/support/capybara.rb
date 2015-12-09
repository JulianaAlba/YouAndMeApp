<<<<<<< HEAD
require 'capybara/rspec'
=======
 require 'capybara/rspec'
>>>>>>> 9cf08bf7137e7636b8808991bb1b6caa4d9cef9e
          require 'capybara/poltergeist'

          Capybara.register_driver :poltergeist do |app|
            Capybara::Poltergeist::Driver.new(app, js_errors: false, timeout: 5000)
          end

          Capybara.javascript_driver = :poltergeist
<<<<<<< HEAD
=======

>>>>>>> 9cf08bf7137e7636b8808991bb1b6caa4d9cef9e
