require 'rails_helper'

RSpec.describe "animals/show", :type => :view do
  before(:each) do
    @animal = assign(:animal, Animal.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Common Name/)
    expect(rendered).to match(/Scientific Name/)
    expect(rendered).to match(/Image/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Country Of Origin/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Best Climate/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
  end
end
