# == Schema Information
#
# Table name: questions
#
#  id         :integer          not null, primary key
#  title      :string
#  body       :text
#  resolved   :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Question < ActiveRecord::Base
  has_many :answers
  accepts_nested_attributes_for :answers, allow_destroy: true
end
