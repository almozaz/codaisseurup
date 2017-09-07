class Profile < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true
  belongs_to :user

   def full_name
     "#{first_name} #{last_name}"
   end

   def by_initial(letter)
    where("first_name LIKE ?", "#{letter}%").order(:first_name)
  end
end
