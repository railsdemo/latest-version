class Blog < ActiveRecord::Base

	def self.current_blog
		Blog.all.sort_by(&:blog_date).last
	end
end
