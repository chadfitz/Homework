# == Schema Information
#
# Table name: gifts
#
#  id          :bigint           not null, primary key
#  title       :string           not null
#  description :string           not null
#  guest_id    :bigint           not null
#  party_id    :bigint           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Gift < ApplicationRecord
  validates :description, :title, :guest, presence: true

  belongs_to :guest
  belongs_to :party
end
