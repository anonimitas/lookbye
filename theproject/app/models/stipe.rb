class Stipe < ApplicationRecord
validates :title, presence: true
validates :body, presence: true
validates :description, presence: true

  # Alias for acts_as_ordered_taggable_on :tags
  acts_as_ordered_taggable

has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }
validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

extend FriendlyId
friendly_id :title, use: :slugged

belongs_to :author

def should_generate_new_friendly_id?
	title_changed?
end
end

