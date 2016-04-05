class Company < ActiveRecord::Base
  has_many :addresses
  
  def name_slogan
    "#{name}: #{catchphrase}"
  end
end
