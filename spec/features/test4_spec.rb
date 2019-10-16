require 'rails_helper'
require 'capybara/rspec'

describe "test4", type: :feature  do

    it "redirect to test5" do
        
        visit('/pages/test_4')
        sleep 2
        find(:xpath, "//*[@id='test-4-ajax-btn']").click
        Capybara.default_max_wait_time = 5
        expect(page).to have_content('This is answer from the server')
        
        sleep 4

    end
    
    
end