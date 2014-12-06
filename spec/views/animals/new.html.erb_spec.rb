require 'rails_helper'

RSpec.describe "animals/new", :type => :view do
  before(:each) do
    assign(:animal, Animal.new(
      :common_name => "MyString",
      :scientific_name => "MyString",
      :image => "MyString",
      :description => "MyText",
      :country_of_origin => "MyString",
      :biological_properties => "MyText",
      :domestic_properties => "MyText",
      :best_climate => "MyString",
      :rearing_info => "MyText",
      :diet => "MyText",
      :user => nil
    ))
  end

  it "renders new animal form" do
    render

    assert_select "form[action=?][method=?]", animals_path, "post" do

      assert_select "input#animal_common_name[name=?]", "animal[common_name]"

      assert_select "input#animal_scientific_name[name=?]", "animal[scientific_name]"

      assert_select "input#animal_image[name=?]", "animal[image]"

      assert_select "textarea#animal_description[name=?]", "animal[description]"

      assert_select "input#animal_country_of_origin[name=?]", "animal[country_of_origin]"

      assert_select "textarea#animal_biological_properties[name=?]", "animal[biological_properties]"

      assert_select "textarea#animal_domestic_properties[name=?]", "animal[domestic_properties]"

      assert_select "input#animal_best_climate[name=?]", "animal[best_climate]"

      assert_select "textarea#animal_rearing_info[name=?]", "animal[rearing_info]"

      assert_select "textarea#animal_diet[name=?]", "animal[diet]"

      assert_select "input#animal_user_id[name=?]", "animal[user_id]"
    end
  end
end
