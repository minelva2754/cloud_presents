class User < ActiveRecord::Base
  has_many :sent_match_requests, :class_name => MatchRequest, :foreign_key => :request_user_id
  has_many :targeted_match_requests, :class_name => MatchRequest, :foreign_key => :target_user_id

	def self.sumprice
	User.sum(:price)
	end

  	def matchers
    requester_ids = targeted_match_requests.pluck(:request_user_id)
    sent_match_requests
      .eager_load(:target_user)
      .select { |r| requester_ids.include? r.target_user_id }
      .map { |r| r.target_user }
  	end



end