require 'spec_helper'
require 'middleman-twitter-cards/card/validator'

describe Middleman::TwitterCards::Card::Validator do

  let :requirements do
  end

  before :all do
    @validator = Middleman::TwitterCards::Card::Validator.new({
        card: true,
        title: [ true, 70 ],
        description: [ true, 200 ],
        img_src: false,
        site: false,
        creator: false
    })
  end


  it "raises if missing a required field" do
    expect { @validator.validate({}) }.to raise_error(ArgumentError ,"Twitter Cards requires a 'card' attribute")
  end

  it "raises if a field is too long" do
    expect { @validator.validate({
      card: "summary",
      title: "this is longer than the alowed 70 characters from the twitter documentation",
      description: "woot"
      }) }.to raise_error(ArgumentError, "The field 'title' is too long" )
  end

  it "returns the input if it passes validation" do
    input = {
      card: "summary",
      title: "this is an acceptable length title",
      description: "woot"
    }
    @validator.validate(input).should == input
  end

end