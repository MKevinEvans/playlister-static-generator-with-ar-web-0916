class Genre < ActiveRecord::Base
	has_many :songs
	has_many :artists, through: :songs


	def to_slug
		# binding.pry
		self.name.downcase.strip.gsub(' ', '-').gsub(/[^\w-]/, '')
	end
end