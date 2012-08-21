require 'spec_helper'

describe User do

  before do
    @user = User.new(name: "Laurence Malonga", email: "laurence@communityapp.com",
                    
                  password: "000000", password_confirmation: "000000")
  end

  subject { @user }

  it { should respond_to(:name) }
  it { should respond_to(:email) }
  it { should respond_to(:password_digest) }
  it { should respond_to(:password) }
  it { should respond_to(:password_confirmation) }

  it { should be_valid }

  describe "when name is not present" do
    before { @user.name = " " }
    it { should_not be_valid }
  end
  
  describe "when email is not present" do
   before { @user.email = " " }
    it { should_not be_valid }
  end
  
  #describe "when name is too long" do
   # before { @user.name = "0" * 50 }
    #it { should_not be_valid }
  #end
  
end
