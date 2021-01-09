class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :shows

  def full_name
    "#{self.first_name} #{self.last_name}"
  end
  def list_roles #Use .map
    characters.map {|a| "#{a.name} - #{a.show.name}"}
  end
  #binding.pry
end