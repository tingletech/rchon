class UserField < ActiveRecord::Base
  attr_accessible :collection_content_id, :ead_element_id, :title, :value
end