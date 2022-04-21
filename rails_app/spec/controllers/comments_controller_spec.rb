require 'rails_helper'

RSpec.describe CommentsController, type: :controller do
  describe 'create' do
    it 'successfully creates a new comment' do
      comment = Comment.create(body: "rspec_test")
      
      expect(User.last.body).to eq("rspec_test")
    end
  end
end
