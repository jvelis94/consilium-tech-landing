class Person < ApplicationRecord
    JOB_TITLE = ['Software Engineer', 'Data Science', 'DevOps', 'IT', 'Product', 'Management', 'Other'].freeze
    

    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :email, presence: true
    validates :city, presence: true
    validates :recent_company, presence: true
    # validates :expertise, presence: true
    validates :job_title, presence: true, inclusion: { in: JOB_TITLE }
end
