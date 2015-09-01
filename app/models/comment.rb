class Comment < ActiveRecord::Base
	belons_to :user
	belons_to :place
end
