require 'rails_helper'

RSpec.describe "appointments/edit", type: :view do
  let(:appointment) {
    Appointment.create!(
      status: 1,
      description: "MyText",
      doctor: nil,
      user: nil
    )
  }

  before(:each) do
    assign(:appointment, appointment)
  end

  it "renders the edit appointment form" do
    render

    assert_select "form[action=?][method=?]", appointment_path(appointment), "post" do

      assert_select "input[name=?]", "appointment[status]"

      assert_select "textarea[name=?]", "appointment[description]"

      assert_select "input[name=?]", "appointment[doctor_id]"

      assert_select "input[name=?]", "appointment[user_id]"
    end
  end
end
