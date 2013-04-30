class Doc < ActiveRecord::Base
  attr_accessible :assertion_id, :content, :subject
end
