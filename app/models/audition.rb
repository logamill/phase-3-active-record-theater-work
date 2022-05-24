class Audition < ActiveRecord::Base
    belongs_to :role

    def call_back
        self.update( hired: true )
        return self
    end
end
