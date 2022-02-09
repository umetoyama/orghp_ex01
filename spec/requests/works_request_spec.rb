require 'rails_helper'

RSpec.describe "Works", type: :request do

  describe "GET /index" do
    it "returns http success" do
      get "/works/index"
      expect(response).to have_http_status(:success)
    end
  end

end
