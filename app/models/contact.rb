class Contact < ApplicationRecord
  belongs_to :user

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :request_type
  belongs_to :absent_type
  belongs_to :in_and_out_time
end
