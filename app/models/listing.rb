# == Schema Information
#
# Table name: listings
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  time       :string(255)
#  date       :string(255)
#  seats      :integer
#  venue_name :string(255)
#  location   :text
#  other_info :text
#  projector  :boolean          default(FALSE)
#  cables     :boolean          default(FALSE)
#  laptops    :boolean          default(FALSE)
#  seating    :boolean          default(FALSE)
#  blinds     :boolean          default(FALSE)
#  lighting   :boolean          default(FALSE)
#  camcorder  :boolean          default(FALSE)
#  catering   :boolean          default(FALSE)
#  toilets    :boolean          default(FALSE)
#  fire       :boolean          default(FALSE)
#  internet   :boolean          default(FALSE)
#  created_at :datetime
#  updated_at :datetime
#  price      :decimal(, )
#  user_id    :integer
#

class Listing < ActiveRecord::Base

	belongs_to :user
end
