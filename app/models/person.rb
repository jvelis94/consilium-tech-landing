class Person < ApplicationRecord
    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :email, presence: true
    validates :city, presence: true
    validates :recent_company, presence: true
    validates :expertise, presence: true
    validates :job_title, presence: true, inclusion: { in: %w[Software Data DevOps IT Product Management Other] }
end
