require 'spec_helper'
require 'middleman-twitter-cards/card/validator'
require 'middleman-twitter-cards/card/types/summary'

describe Middleman::TwitterCards::Card::Types::Summary do

  it "returns a hash of fields" do
    input = {
      card: "summary",
      title: "this is an acceptable length title",
      description: "woot"
    }
    Middleman::TwitterCards::Card::Types::Summary.new( input ).fields.should == input
  end

end