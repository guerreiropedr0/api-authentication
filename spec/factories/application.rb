FactoryBot.define do
  factory :application, class: 'Doorkeeper::Application' do
    name { 'Web Client' }
    uid { 'tmYqBiCtWZutiQj1uhxEZCqiWOPH77jxrqI-2VxQHNU' }
    secret { 'eG5rQ1VfovKLG_QtIcRv3AeplBLkGQ_rqZSxbzA8eVA' }
  end
end
