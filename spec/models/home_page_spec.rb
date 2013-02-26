require File.dirname(__FILE__) + '/../spec_helper'

describe HomePage do
  before(:each) do
    @home_page = HomePage.new
  end

  it "should be valid" do
    @home_page.should be_valid
  end
end
