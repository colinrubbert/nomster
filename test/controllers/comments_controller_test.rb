require 'test_helper'

class CommentsControllerTest < ActionController::TestCase
  test "create_comments" do
    user = FactoryGirl.create(:user)
    sign_in user

    place = FactoryGirl.create(:place)
    post :create, :place_id => place.id, :comment => {
      :message => 'This place is amazing!',
      :rating => '1_star',
      :user_id => user.id
    }
    assert_not_empty(place.comments)
    assert_redirected_to place_path(place)
  end
end
