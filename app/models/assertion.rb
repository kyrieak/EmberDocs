class Assertion < ActiveRecord::Base
  attr_accessible :member_id, :statement

  belongs_to :member
end
