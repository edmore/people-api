class Person < ApplicationRecord
  has_many :goals

  validates :first_name, :last_name, presence: true

  def person_score
    scores = self.goals.pluck(:score)
    total = scores.sum
    total/scores.count
  end
end
