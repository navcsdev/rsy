class Movie < ApplicationRecord
  YT_LINK_FORMAT = /\A.*(youtu.be\/|v\/|u\/\w\/|embed\/|watch\?v=|\&v=)([^#\&\?]*).*/i

  belongs_to :sharers, :class_name => :User, :foreign_key => 'sharers_id'

  validates :link, presence: true, format: YT_LINK_FORMAT
  validates :uid, uniqueness: { scope: [:sharers_id, :uid] }

  enum voted: [:un_voted, :voted_up, :voted_down]
end
