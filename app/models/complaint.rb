class Complaint < ActiveRecord::Base
   validates :to, presence: true, length: { minimum: 3 }
   validates :text, presence: true, length: { minimum: 3 }
   validates :from, presence: true, length: { minimum: 3 }
end
