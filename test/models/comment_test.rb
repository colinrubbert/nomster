require 'test_helper'

class CommentTest < ActiveSupport::TestCase
   test "rating_is_humanized" do
     user = FactoryGirl.create(:user)

     comment = FactoryGirl.create(:comment, :user => user, :rating => '1_star')
     expected = 'one star'
     actual = comment.humanized_rating
     assert_equal expected, actual
   end


#  test "create a comment success" do
#  end

#  test "create a comment validation error" do
#  end
end
