require 'rails_helper'

RSpec.describe "reservations/new", type: :view do
  before(:each) do
    assign(:reservation, Reservation.new(
      :customer => nil,
      :cruise => nil
    ))
  end

  it "renders new reservation form" do
    render

    assert_select "form[action=?][method=?]", reservations_path, "post" do

      assert_select "input[name=?]", "reservation[customer_id]"

      assert_select "input[name=?]", "reservation[cruise_id]"
    end
  end
end
