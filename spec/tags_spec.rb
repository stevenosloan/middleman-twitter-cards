require 'spec_helper'
require 'middleman-twitter-cards/tags'

describe Middleman::TwitterCards::Tags do

  it "maps names to their twitter name" do
    Middleman::TwitterCards::Tags.map_name("foo").should == "twitter:foo"
    Middleman::TwitterCards::Tags.map_name("foo_bar").should == "twitter:foo:bar"
    Middleman::TwitterCards::Tags.map_name("foo_bar_baz").should == "twitter:foo:bar:baz"
  end

  it "maps hashes to new twitter names" do
    Middleman::TwitterCards::Tags.map_fields({one: "two", three: "four"}).should == {
      "twitter:one" => "two",
      "twitter:three" => "four"
    }
  end

end