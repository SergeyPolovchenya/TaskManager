class User < ApplicationRecord
  has_secure_password

  has_many :my_tasks, class_name: 'Task', foreign_key: :author_id
  has_many :assigned_tasks, class_name: 'Task', foreign_key: :assignee_id

  validates :first_name, :last_name, presence: true
  validates :first_name, :last_name, length: { minimum: 2 }
  validates :email, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
end
