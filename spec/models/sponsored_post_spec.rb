# == Schema Information
#
# Table name: sponsored_posts
#
#  id         :integer          not null, primary key
#  title      :string
#  body       :text
#  price      :integer
#  topic_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe SponsoredPost, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
