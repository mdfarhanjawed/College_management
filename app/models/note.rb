class Note < ApplicationRecord
  belongs_to :user
  has_many :permissions, dependent: :destroy

  has_many :taggings, dependent: :destroy
  has_many :tags, through: :taggings

  def all_tags=(name)
  	self.tags = name.split(',').map do |name|
  		Tag.where(name: name).first_or_create!
  	end
  end

  def all_tags
  	tags.map(&:name).join(', ')
  end

  def self.tag_with(name)
  	Tag.find_by(name: name).notes
  end
end
