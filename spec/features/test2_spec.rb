require 'rails_helper'

describe "test2", type: :feature do

    it "redirect to test3 ok" do
        # binding.pry
        visit '/pages/test_2'
        sleep 3
        expect(page).to have_content('Data will appear here after submission.')
        fill_in('Example textfield', with: 'Example')
        sleep 1
        page.has_content?('Test #2 - forms')
        check('Example checkbox')
        sleep 1
        select('Opt 2', from: 'Example select')
        sleep 1
        choose('example_radiobutton_opt_1')
        sleep 1
        click_on('Submit')
        expect(page).to have_content('Submitted successfully')
        sleep 2
    end

    it "redirect to test3 fail" do
        # binding.pry
        visit '/pages/test_2'
        sleep 3
        expect(page).to have_content('Data will appear here after submission.')
        click_on('Submit')
        expect(page).to have_content('Some data was missing')
        sleep 2
    end
end

    


