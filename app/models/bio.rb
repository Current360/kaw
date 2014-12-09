class Bio < ActiveRecord::Base
    def self.update_featured(id)
        @featured = Bio.find(id)
    end
end
