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
end
