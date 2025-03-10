class Participant < ApplicationRecord
  belongs_to :user
  belongs_to :assignment, foreign_key: 'assignment_id', inverse_of: false
  belongs_to :team

  def fullname
    user.fullname
  end
end
