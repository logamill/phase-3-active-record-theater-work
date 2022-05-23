class Role < ActiveRecord::Base
    has_many :auditions

    def actors 
        self.auditions.map do |audition|
            audition.actor
        end
    end

    def locations 
        self.auditions.map do |audition|
            audition.location
        end
    end

    def lead
        lead_arr = self.auditions.filter do |audition|
            audition.hired == true
        end
        if lead_arr.length > 0 
            lead_arr[0]
        else
            return "no actor has been hired for this role"
        end
    end

    def understudy
        under_arr = self.auditions.filter do |audition|
            audition.hired == true
        end
        if under_arr.length > 1
            return under_arr[1]
        else
            return "no actor has been hired for understudy for this role"
        end
    end


end