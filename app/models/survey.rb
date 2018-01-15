class Survey < ApplicationRecord
	has_many :questions, :dependent => :destroy
	has_many :papers, :dependent => :destroy
	
	def self.latest
		Survey.order(:updated_at).last
	end
end
