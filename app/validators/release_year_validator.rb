class ReleaseYearValidator < ActiveModel::Validator 

    def validate(record)
        if record.released == true && record.release_year.blank?  
            record.errors[:release_year] << "A year must be entered"
        end 
        if record.released == true && record.release_year != nil && record.release_year > Date.current.year
            record.errors[:release_year] << "A valid year must be entered"
        end 
    end 
end 