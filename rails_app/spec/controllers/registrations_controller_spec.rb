require 'rails_helper'

RSpec.describe RegistrationsController, type: :controller do
  describe 'sign_up_params' do
    it 'successfully creates a new article' do
      user = User.create(email: "rspec@mail.com")
      
      expect(User).to eq(false)
    end
  end
end
