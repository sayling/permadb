require 'rails_helper'

RSpec.describe "animals/index", :type => :view do
  before(:each) do
    assign(:animals, [
      Animal.create!(
        :common_name => "Common Name",
        :scientific_name => "Scientific Name",
        :image => "Image",
        :description => "MyText",
        :country_of_origin => "Country Of Origin",
        :biological_properties => "MyText",
        :domestic_properties => "MyText",
        :best_climate => "Best Climate",
        :rearing_info => "MyText",
        :diet => "MyText",
        :user => nil
      ),
      Animal.create!(
        :common_name => "Common Name",
        :scientific_name => "Scientific Name",
        :image => "Image",
        :description => "MyText",
        :country_of_origin => "Country Of Origin",
        :biological_properties => "MyText",
        :domestic_properties => "MyText",
        :best_climate => "Best Climate",
        :rearing_info => "MyText",
        :diet => "MyText",
        :user => nil
      )
    ])
  end

  it "renders a list of animals" do
    render
    assert_select "tr>td", :text => "Common Name".to_s, :count => 2
    assert_select "tr>td", :text => "Scientific Name".to_s, :count => 2
    assert_select "tr>td", :text => "Image".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Country Of Origin".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Best Climate".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
