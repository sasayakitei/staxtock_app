class Profile < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :address,   class_name: 'Prefecture'
  belongs_to_active_hash :workplace, class_name: 'Prefecture'

  belongs_to :user
end
