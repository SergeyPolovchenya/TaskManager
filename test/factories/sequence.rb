FactoryBot.define do
  sequence :string, aliases: [:first_name, :last_name, :password, :avatar, :type, :name, :description, :state] do |n|
    "string#{n}"
  end

  sequence :email do |n|
    "user#{n}@example.com"
  end

  sequence :expired_at do |n|
    n.days.from_now.to_date
  end
end
