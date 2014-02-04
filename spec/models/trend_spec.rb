require 'spec_helper'

describe Trend do
  describe "given two worldwide trends saved to our DB" do
    before do
      @options = {name: "SuperBowl", twitter_url: "http://twitter.com/search/?q=SuperBowl"}
      @trend1 = Trend.create(@options)
      @trend2 = Trend.create(@options)
    end
    it "should have the trend saved and return the right values" do
      @trends = Trend.all
      @trends.count.should == 2
      @trends.each do |trend|
        trend.name.should == @options[:name]
        trend.twitter_url.should == @options[:twitter_url]
      end
    end
  end
end
