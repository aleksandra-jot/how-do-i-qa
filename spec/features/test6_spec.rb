   
    
require 'rails_helper'
require 'capybara/rspec'
require 'countries.rb'


feature 'Test #6' do

    #context 'when countries exist' do
        #let(:user) { FactoryGirl.create(:country) }

        #scenario 'user can see the countries displayed on page' do
            #visit('/pages/test_6')
            #expect(page).to have_content 'Test #6'
            #expect(page).to have_content 'Poland | PL'
        #end
    #end

    context 'when countries do not exist' do
        scenario 'user can see page with no data' do
            visit('/pages/test_6')
            expect(page).to have_content 'Test #6'
            expect(page).to have_content 'No data'
        end
    end

end

        
        


    
    

    
