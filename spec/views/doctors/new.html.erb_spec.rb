require 'rails_helper'

RSpec.describe "doctors/new", type: :view do
  before(:each) do
    assign(:doctor, Doctor.new(
      fullname: "MyString",
      category: nil
    ))
  end

  it "renders new doctor form" do
    render

    assert_select "form[action=?][method=?]", doctors_path, "post" do

      assert_select "input[name=?]", "doctor[fullname]"

      assert_select "input[name=?]", "doctor[category_id]"
    end
  end
end
