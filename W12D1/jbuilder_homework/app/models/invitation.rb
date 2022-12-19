# == Schema Information
#
# Table name: invitations
#
#  id         :bigint           not null, primary key
#  guest_id   :bigint           not null
#  party_id   :bigint           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Invitation < ApplicationRecord
  validates :party, :guest, presence: true

  belongs_to :party
  belongs_to :guest
end
