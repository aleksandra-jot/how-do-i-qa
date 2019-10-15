require 'rails_helper'

describe "test0", type: :feature do

    it "redirect to test1" do
        # binding.pry
        visit '/pages/test_0'
        sleep 3
        page.has_content?('Test #0 - the basics') == true
        click_on('Next')
        sleep 3
        page.has_content?('Test #1 - scoping')

    end
end

    


