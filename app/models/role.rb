class Role < ActiveRecord::Base
    has_many :auditions

    def actors 
        self.auditions.pluck(:actor)
    end

    def locations
        self.auditions.pluck(:location)
    end

    def lead
        lead = self.auditions.where(hired: true).pluck 
        lead.length > 0 ? lead.first : "no actor has been hired for this role"

        # new_arr = []
        # self.auditions.each do | this |
        #     if this.hired == true
        #         new_arr << this
        #     end
        # end
        # new_arr.length > 0 ? new_arr[0] : "no actor has been hired for this role"
    end 

    def understudy
        understudy = self.auditions.where(hired: true).pluck 
        understudy.length > 1 ? understudy.second : "no actor has been hired for this role"  
        # self.auditions.each do | this |
        #     if this.hired == true
        #         new_arr << this
        #     end
        # end
        # new_arr.length > 1 ? new_arr[1] : "no actor has been hired for understudy for this role"
    end 

end