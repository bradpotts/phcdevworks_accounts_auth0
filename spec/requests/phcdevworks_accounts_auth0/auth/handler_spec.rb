require 'rails_helper'

RSpec.describe "Auth::Handlers", type: :request do
  describe "GET /callback" do
    it "returns http success" do
      get "/auth/handler/callback"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /failure" do
    it "returns http success" do
      get "/auth/handler/failure"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /logout" do
    it "returns http success" do
      get "/auth/handler/logout"
      expect(response).to have_http_status(:success)
    end
  end

end
