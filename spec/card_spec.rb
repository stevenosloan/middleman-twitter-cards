require 'spec_helper'
require 'middleman-twitter-cards/tags'
require 'middleman-twitter-cards/card'
require 'middleman-twitter-cards/card/types/summary'
require 'middleman-twitter-cards/card/render'
require 'middleman-twitter-cards/card/validator'


describe Middleman::TwitterCards::Card do

  it "renders correct meta tags" do
    input = {
      title: "this is an acceptable length title",
      description: "woot"
    }
    card = Middleman::TwitterCards::Card.new( input )

    card.metatags.should == "<meta name='twitter:card' content='summary' /><meta name='twitter:title' content='this is an acceptable length title' /><meta name='twitter:description' content='woot' />"
  end


end