class Result < ApplicationRecord
  belongs_to :question
  belongs_to :paper
  belongs_to :user

	
	def self.to_csv(options = {})
		CSV.generate(options) do |csv|
			csv << column_names
			all.each do |result|
				csv << result.attributes.values_at(*column_names)
			end
		end
	end


end
