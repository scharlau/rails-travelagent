require 'rails_helper'

#This test doesn't work as it doesn't test the whole stack

RSpec.describe "Users", type: :request do
  describe "GET /users" do
    it "works! (now write some real specs)" do
      user = User.create(name: "Colin", email: "colin@smith.com", password: "mypassword") 
    #  post login_path :params => {email: user.email, password: user.password}
     get users_path
      expect(response).to have_http_status(200)
      expect(page).to have_content("Colin")
    end
  end
end
