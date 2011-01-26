require 'spec_helper'

describe PurchasesController do
  render_views

  describe "GET 'index'" do
    it "should be successful" do
      get :index
      response.should be_success
    end

    it "should have appropriate heading" do
      get :index
      response.should have_selector("h1", :content => "Purchases")
    end

    it "should have list of purchases" do
      get :index
      response.should have_selector("div.purchases")
    end
  end

end
