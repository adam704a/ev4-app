class Organization < ActiveRecord::Base
  has_many :clients
end
