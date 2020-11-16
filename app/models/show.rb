class Show < ActiveRecord::Base
   has_many :characters
   has_many :actors, through: :characters
   belongs_to :network
  
    def actors_list
    array = []
      self.actors.each do |a|
        array << a.full_name
      end
    array
    end
end