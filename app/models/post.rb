class Post < ActiveRecord::Base
  belongs_to :group
  belongs_to :user
  belongs_to :network

  validates :title , presence: true
  validates :caption , presence: true
end
