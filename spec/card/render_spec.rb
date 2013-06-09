require 'spec_helper'
require 'middleman-twitter-cards/card/render'

describe Middleman::TwitterCards::Card::Render do

  it "renders a metatag" do
    Middleman::TwitterCards::Card::Render.tag( :meta, name: "foo", content: "bar" ).should == "<meta name='foo' content='bar' />"
  end

end