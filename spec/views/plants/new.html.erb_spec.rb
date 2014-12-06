require 'rails_helper'

RSpec.describe "plants/new", :type => :view do
  before(:each) do
    assign(:plant, Plant.new(
      :common_name => "MyString",
      :scientific_name => "MyString",
      :image => "MyString",
      :description => "MyText",
      :country_of_origin => "MyString",
      :botanical_properties => "MyText",
      :domestic_properties => "MyText",
      :climate => "MyString",
      :growing_instructions => "MyText",
      :user => nil
    ))
  end

  it "renders new plant form" do
    render

    assert_select "form[action=?][method=?]", plants_path, "post" do

      assert_select "input#plant_common_name[name=?]", "plant[common_name]"

      assert_select "input#plant_scientific_name[name=?]", "plant[scientific_name]"

      assert_select "input#plant_image[name=?]", "plant[image]"

      assert_select "textarea#plant_description[name=?]", "plant[description]"

      assert_select "input#plant_country_of_origin[name=?]", "plant[country_of_origin]"

      assert_select "textarea#plant_botanical_properties[name=?]", "plant[botanical_properties]"

      assert_select "textarea#plant_domestic_properties[name=?]", "plant[domestic_properties]"

      assert_select "input#plant_climate[name=?]", "plant[climate]"

      assert_select "textarea#plant_growing_instructions[name=?]", "plant[growing_instructions]"

      assert_select "input#plant_user_id[name=?]", "plant[user_id]"
    end
  end
end
