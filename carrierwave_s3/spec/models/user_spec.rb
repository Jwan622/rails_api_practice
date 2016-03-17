describe User do

  before(:each) do
    @user = create(:user)
  end
  describe "images" do
    it "should have multiple images" do

        @user.images.length.should eq(1)
    end
  end
end
