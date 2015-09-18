require 'test_helper'

class CommentTest < ActiveSupport::TestCase
   test "comments rating" do
     u = FactoryGirl.create(:user)
     place = FactoryGirl.create(:place)
  	 comment = FactoryGirl.create(:comment, :user => u, :place => place, )
  	 expected = 'three stars'
  	 actual = comment.humanized_rating
  	 assert_equal expected, actual

   end
end
