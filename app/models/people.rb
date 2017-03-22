class People < ApplicationRecord

  validates_presence_of :name, :favoriteCity

  before_save :capitalize_name_and_city


  def capitalize_name_and_city
    if (self.name && !self.name.blank?) && (self.favoriteCity && !self.favoriteCity.blank?)
      self.name = self.name.split.collect(&:capitalize).join(' ')
      self.favoriteCity = self.favoriteCity.split.collect(&:capitalize).join(' ')
    end
  end

end
