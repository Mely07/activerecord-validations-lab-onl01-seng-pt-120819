class PostValidator < ActiveModel::Validator

    def validate(record)
        unless record.title && record.title.include?("Won't Believe" || "Secret" || "Top [number]" || "Guess")
            record.errors[:title] << "Invalid!"
        end 
    end
    
  end
