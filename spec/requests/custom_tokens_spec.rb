require 'rails_helper'

RSpec.describe '/oauth/token', type: :request do
  describe 'create token', type: :request do
    let(:application) { FactoryBot.create(:application) }
    let(:user) { FactoryBot.create(:user) }

    it 'succeeds' do
      post '/oauth/token', params: {
        grant_type: 'password',
        email: user.email,
        password: user.password,
        client_id: application.uid,
        client_secret: application.secret
      }
      expect(response).to be_successful
      expect(response.body).to include('token')
      expect(response.body).to include(user.to_json)
    end
  end
end
