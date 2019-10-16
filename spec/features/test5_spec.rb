require 'rails_helper'
require 'capybara/rspec'
require 'users.rb'

describe "test5", type: :feature  do
    let(:user) { FactoryGirl.create(:user) }
    
    it "redirect to test6 FIRST" do
        
        visit('/pages/test_5')
        sleep 2
        click_on('Sign up')
        sleep 2
        fill_in 'Email', with: user.email    
        fill_in 'Password', with: user.password   
        fill_in 'Password confirmation', with: user.password  
        
        find(:xpath, "/html/body/div/div/div[3]/a").click


        sleep 4

    end
    
    
    

    
end
