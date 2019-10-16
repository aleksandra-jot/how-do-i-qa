require 'rails_helper'
require 'capybara/rspec'

describe "test3", type: :feature  do

    it "redirect to test4" do
        
        visit('/pages/test_3')
        first('table tr').click.has_css?(".highlighted")
        
        sleep 4

    end
    
    
end