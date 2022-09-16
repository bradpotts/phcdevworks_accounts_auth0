require 'rails_helper'

RSpec.describe "Website::Unsecureds", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/website/unsecured/index"
      expect(response).to have_http_status(:success)
    end
  end

end
