require 'rails_helper'

RSpec.describe "doctors/new", type: :view do
  before(:each) do
    assign(:doctor, Doctor.new(
      first_name: "MyString",
      last_name: "MyString",
      gender: "MyString"
    ))
  end

  it "renders new doctor form" do
    render

    assert_select "form[action=?][method=?]", doctors_path, "post" do

      assert_select "input[name=?]", "doctor[first_name]"

      assert_select "input[name=?]", "doctor[last_name]"

      assert_select "input[name=?]", "doctor[gender]"
    end
  end
end
