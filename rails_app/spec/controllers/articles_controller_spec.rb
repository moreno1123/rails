require 'rails_helper'

RSpec.describe ArticlesController, type: :controller do
  describe 'create' do
    it 'successfully creates a new article' do
      article = Article.create(body: "rspec_test", title: "rspec")
      
      expect(Article.last.body).to eq("rspec_test")
    end
  end
end
