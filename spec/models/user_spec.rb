require 'rails_helper'

RSpec.describe User, type: :model do

  describe "creation" do

    it "has a valid class" do
      expect(described_class).to_not be_nil
    end

    context "with invalid attributes" do

      it "should not be valid" do
        @user = build(:user, firstname: "", lastname: "")
        expect(@user.save).to be false
      end
      
      it "username is not valid" do
        @user = build(:user, username: "")
        expect(@user.save).to be false
      end
    
      it "username length is < 2" do
        @user = build(:user, username: "a")
        expect(@user.save).to be false  
      end
    end

  end

end