require 'rails_helper'

describe "test1", type: :feature do

    it "redirect to test2" do
        # binding.pry
        visit '/pages/test_1'
        sleep 3
        page.has_content?('Test #1 - scoping') 
        find(:xpath, "//*[@id='footer']/div/div/a").click
        sleep 3
        page.has_content?('Test #2 - forms')

    end
end

    


