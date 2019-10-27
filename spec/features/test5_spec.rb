require 'rails_helper'
require 'capybara/rspec'
require 'users.rb'

describe "test5", type: :feature  do
    let(:user) { FactoryGirl.create(:user) }
    before do
        allow_any_instance_of(PagesController).to receive(:authenticate_user!).and_return(true)
        allow_any_instance_of(PagesController).to receive(:current_user).and_return(user)
    end
    
    it "redirect to test6 FIRST" do
        
        visit('/pages/test_5')
        expect(page).to have_content 'Test #5'
        expect(page).to have_content 'john@example.example'
        
        sleep 4
    end
    
end
     