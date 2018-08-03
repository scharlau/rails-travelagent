require 'rails_helper'

RSpec.describe "payments/new", type: :view do
  before(:each) do
    assign(:payment, Payment.new(
      :amount => "9.99",
      :credit_card => nil,
      :customer => nil,
      :reservation => nil
    ))
  end

  it "renders new payment form" do
    render

    assert_select "form[action=?][method=?]", payments_path, "post" do

      assert_select "input[name=?]", "payment[amount]"

      assert_select "input[name=?]", "payment[credit_card_id]"

      assert_select "input[name=?]", "payment[customer_id]"

      assert_select "input[name=?]", "payment[reservation_id]"
    end
  end
end
