class People < ActiveRecord::Base

  validates_presence_of :name, :favoriteCity

end
