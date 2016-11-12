class Word < ActiveRecord::Base
  validates :word, presence: true

  scope :nouns, -> { where(kind: 'noun') }
  scope :adjectives, -> { where(kind: 'adjective') }
end
