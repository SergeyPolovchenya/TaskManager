FactoryBot.define do
  factory :task do
    name
    description
    author_id { 1 }
    assignee_id { 1 }
    state
    expired_at { '2023-06-21' }
  end
end
