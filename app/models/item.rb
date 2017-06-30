class Item < ActiveRecord::Base
  belongs_to :collection

  # FIXME: Move configuration to environment
  MAX_FIELDS = 100

  validates :num_fields, :numericality => { :greater_than => 0, :less_than_or_equal_to => MAX_FIELDS }
  validates_presence_of :num_fields, :collection_id
end
