FactoryBot.define do
  sequence :string, aliases: [:first_name, :last_name, :password, :avatar, :name, :description] do |n|
    "string#{n}"
  end

  sequence :email do |n|
    "user#{n}@example.com"
  end

  sequence :expired_at do |n|
    n.days.from_now.to_date
  end

  sequence :type do |n|
    [:Developer, :Manager, :Admin].sample
  end
end
