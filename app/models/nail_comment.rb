class NailComment < ApplicationRecord
	belongs_to :user, optional: true
	belongs_to :nail

end
