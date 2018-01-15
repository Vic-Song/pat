class Question < ApplicationRecord
  belongs_to :survey
  has_many :sub_options, :dependent => :destroy
  has_many :obj_options, :dependent => :destroy
  has_many :results
end
