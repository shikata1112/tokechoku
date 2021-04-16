require 'rails_helper'

RSpec.describe Common::HomeController, type: :controller do

  describe "GET #top" do
    it "returns http success" do
      get :top
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #about" do
    it "returns http success" do
      get :about
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #user_guide" do
    it "returns http success" do
      get :user_guide
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #warranty" do
    it "returns http success" do
      get :warranty
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #vendor_guide" do
    it "returns http success" do
      get :vendor_guide
      expect(response).to have_http_status(:success)
    end
  end

end
