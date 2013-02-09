class Group < ActiveRecord::Base
  attr_accessible :g_id, :g_name

  validates :g_id, :presence => true
  validates :g_name, :presence => true
  validates_uniqueness_of :g_id
  validates_uniqueness_of :g_name
end
