require 'rails_helper'

RSpec.describe CommentsController, type: :controller do
 
  before(:all) do 
    @comment1 = create(:comment)  
  end
 
  it 'successfully creates a new comment' do
    expect(@article1).to be_valid 
  end
end
