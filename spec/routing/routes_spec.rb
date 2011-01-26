require 'spec_helper'

describe "Routes" do
  describe "root path" do
    it "should call pages#home" do
      { :get => "/" }.should route_to(
        :controller => "pages",
        :action => "home"
      )
    end
    it "should not respond to /pages/home" do
      { :get => "/pages/home" }.should_not be_routable
    end
  end

  describe "products paths" do
    it "should provide index" do
      { :get => "/purchases" }.should route_to(
        :controller => "purchases",
        :action => "index"
      )
    end
    it "should not respond to other resource paths YET" do
      { :get => "/purchases/new" }.should_not be_routable
      { :get => "/purchases/1" }.should_not be_routable
      { :get => "/purchases/1/edit" }.should_not be_routable
    end
  end
end
