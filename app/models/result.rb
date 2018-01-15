class Result < ApplicationRecord
  belongs_to :question
  belongs_to :paper
  belongs_to :user
end
