class Comment < ActiveRecord::Base
  # Use Parole
  acts_as_commentable
  acts_as_comment

  # Use Emotions
  acts_as_emotive

  # Validations
  validates :comment, presence: true
  validates :commenter, presence: true
  validates :commentable, presence: true

  # Scopes
  # TODO: Devrait être modifier pour être un ordre plus clever.
  scope :popular, lambda { |count=10| order('created_at ASC').limit(count) }
end
