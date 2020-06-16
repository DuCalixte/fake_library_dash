require 'rails_helper'

RSpec.describe "Api::V1::BookListInfos", type: :request do

  describe "GET /index" do
    it "returns http success" do
      get "/api/v1/book_list_infos/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/api/v1/book_list_infos/show"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /create" do
    it "returns http success" do
      get "/api/v1/book_list_infos/create"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /update" do
    it "returns http success" do
      get "/api/v1/book_list_infos/update"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /destroy" do
    it "returns http success" do
      get "/api/v1/book_list_infos/destroy"
      expect(response).to have_http_status(:success)
    end
  end

end
