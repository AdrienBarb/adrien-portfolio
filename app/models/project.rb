class Project < ApplicationRecord
  belongs_to :user
  has_many_attached :images
  has_and_belongs_to_many :tags, uniq: true

  attr_accessor :tag_names

  def tag_names=(names)
    @tag_names = names
    @tag_names.split(' ').each do |name|
      self.tags << Tag.find_or_create_by(name: name.upcase)
    end
  end
end
