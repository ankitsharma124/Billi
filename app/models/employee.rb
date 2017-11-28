class Employee < ApplicationRecord
    def fullname
        #try(:first_name) + try(:last_name)    
        [self.first_name,self.last_name].compact.join('+')
    end
end
