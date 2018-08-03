require 'rails_helper'

RSpec.describe "payments/edit", type: :view do
  before(:each) do
    @payment = assign(:payment, Payment.create!(
      :amount => "9.99",
      :credit_card => nil,
      :customer => nil,
      :reservation => nil
    ))
  end

  it "renders the edit payment form" do
    render

    assert_select "form[action=?][method=?]", payment_path(@payment), "post" do

      assert_select "input[name=?]", "payment[amount]"

      assert_select "input[name=?]", "payment[credit_card_id]"

      assert_select "input[name=?]", "payment[customer_id]"

      assert_select "input[name=?]", "payment[reservation_id]"
    end
  end
end
