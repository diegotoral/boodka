# == Schema Information
#
# Table name: categories
#
#  id         :integer          not null, primary key
#  title      :string           not null
#  memo       :string           default(""), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Category < ActiveRecord::Base
  validates :title, presence: true

  has_many :transactions, dependent: :nullify
  has_many :planned_transactions, dependent: :nullify
end
