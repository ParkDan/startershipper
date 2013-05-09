class Network < ActiveRecord::Base
  has_many :users
  has_many :groups
  has_many :profiles
end
