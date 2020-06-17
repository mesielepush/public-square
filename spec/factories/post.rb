FactoryBot.define do
    factory :post do
      association :user
      content { 'chirp content' }
      avatar {'https://bit.ly/37EMeLI'}
      counter{0}
    end
  end