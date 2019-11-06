class Contact < ApplicationRecord
	validates :email, :full_name, presence: true

	validates :email, format: { with: /\A[a-z0-9\+\-_\.]+@[a-z\d\-.]+\.[a-z]+\z/i }
	validates :phone, :presence => true,
                 :numericality => true,
                 :length => { :minimum => 10, :maximum => 15 }
	validates :email, uniqueness: { case_sensitive: false }
	validates :phone, uniqueness: true
end
