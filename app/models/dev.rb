class Dev < ActiveRecord::Base
    has_many :freebies
    has_many :companies, through: :freebies
    
    def received_one?(item_name)
        received = FALSE
        freebie_num = self.freebies.count
        x = 0
        while received == FALSE && x < freebie_num 
            if self.freebies[x].name == item_name
                received = TRUE           
            end
            x += 1
        end
        return received
    end
    
    def give_away(dev, freebie)
        if self.received_one?(freebie.name)
            freebie.update(dev_id: dev.id)
        else 
            print "The dev doesn't have that freebie to give away!"
        end
    end

end