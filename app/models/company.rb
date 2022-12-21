require 'pry'

class Company < ActiveRecord::Base
    has_many :freebies
    has_many :devs, through: :freebies

    def give_freebie(dev, item_name, value) 
        # binding.pry
        Freebie.create(name: item_name, dev_id: dev.id, company_id: self.id, value: value)
    end

    def self.oldest_company
        Company.order(:founding_year).first
        #Company.minimum(:founding_year)
    end

end
