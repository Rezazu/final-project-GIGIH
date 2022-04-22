require 'rails_helper'

RSpec.describe "OrderDetails", type: :request do
  describe "GET /create" do
    it "returns http success" do
      get "/order_detail/create"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /update" do
    it "returns http success" do
      get "/order_detail/update"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /destroy" do
    it "returns http success" do
      get "/order_detail/destroy"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/order_detail/show"
      expect(response).to have_http_status(:success)
    end
  end

end
