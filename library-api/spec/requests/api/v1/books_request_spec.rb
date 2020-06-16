require 'rails_helper'

RSpec.describe "Api::V1::Books", type: :request do

  describe "GET /index" do
    it "returns http success" do
      get "/api/v1/books/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/api/v1/books/show"
      expect(response).to have_http_status(:success)
    end
  end

end
