class Word < ActiveRecord::Base
  validates :word, presence: true
  validates :word, uniqueness: true
  validates :kind, inclusion: { in: %w(noun adjective) }

  scope :nouns, -> { where(kind: :noun) }
  scope :adjectives, -> { where(kind: :adjective) }

  def as_json(options={})
    self.word
  end
end
