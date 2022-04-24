require 'rails_helper'

RSpec.describe ArticlesController, :type => :controller do

  before(:all) do 
    @article1 = create(:article)  
  end

  it 'successfully creates a new article' do
    expect(@article1).to be_valid 
  end
end
