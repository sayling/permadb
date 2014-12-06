require 'rails_helper'

RSpec.describe "plants/index", :type => :view do
  before(:each) do
    assign(:plants, [
      Plant.create!(
        :common_name => "Common Name",
        :scientific_name => "Scientific Name",
        :image => "Image",
        :description => "MyText",
        :country_of_origin => "Country Of Origin",
        :botanical_properties => "MyText",
        :domestic_properties => "MyText",
        :climate => "Climate",
        :growing_instructions => "MyText",
        :user => nil
      ),
      Plant.create!(
        :common_name => "Common Name",
        :scientific_name => "Scientific Name",
        :image => "Image",
        :description => "MyText",
        :country_of_origin => "Country Of Origin",
        :botanical_properties => "MyText",
        :domestic_properties => "MyText",
        :climate => "Climate",
        :growing_instructions => "MyText",
        :user => nil
      )
    ])
  end

  it "renders a list of plants" do
    render
    assert_select "tr>td", :text => "Common Name".to_s, :count => 2
    assert_select "tr>td", :text => "Scientific Name".to_s, :count => 2
    assert_select "tr>td", :text => "Image".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Country Of Origin".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Climate".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
