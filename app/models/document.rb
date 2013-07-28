class Document < ActiveRecord::Base

	has_many :versions, dependent: :destroy
	
	def current_version
		if versions.where(current: true).count == 1
			versions.where(current: true).first
		end
	end

end
