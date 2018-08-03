require 'rails_helper'

RSpec.describe "payments/index", type: :view do
  before(:each) do
    assign(:payments, [
      Payment.create!(
        :amount => "9.99",
        :credit_card => nil,
        :customer => nil,
        :reservation => nil
      ),
      Payment.create!(
        :amount => "9.99",
        :credit_card => nil,
        :customer => nil,
        :reservation => nil
      )
    ])
  end

  it "renders a list of payments" do
    render
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
