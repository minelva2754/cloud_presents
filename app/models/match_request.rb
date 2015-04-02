class MatchRequest < ActiveRecord::Base
  belongs_to :request_userm, :class_name => User
  belongs_to :target_user, :class_name => User
end