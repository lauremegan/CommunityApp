require 'spec_helper'

#describe "UserPages" do
 # describe "GET /user_pages" do
  #  it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
   #   get user_pages_index_path
    #  response.status.should be(200)
    #end
  #end
  
 

describe "User pages" do

  subject { page }

  describe "signup page" do
    before { visit signup_path }

    it { should have_selector('h1',    text: 'Sign up') }
    it { should have_selector('title', text: 'Sign up') }
   
  end
end


describe User do

before do
    @user = User.new(name: "Laurence Malonga", email: "laurence@communityapp.com",
                    
                  password: "000000", password_confirmation: "000000")
    
    it { should respond_to(:name) }
    it { should respond_to(:email) }
    it { should respond_to(:password_digest) }
    it { should respond_to(:password) }
    it { should respond_to(:password_confirmation) }
    
  end 
end 
