FactoryBot.define do
  
  factory :user do
    
    username {"Joe"}
    email {"joe@gmail.com"}
    encrypted_password {"blah"}
    created_at {"0000"}
    updated_at {"0000"}
    
  end
  
  factory :article do
    
    title {"testni naslov"}
    body {"factory_test"}
    user_id {"1"}
    
  end
  
  factory :comment do
      
    body "Lorem ipsum"
    association :user
    association :article
      
  end
end