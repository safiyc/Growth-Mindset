FactoryBot.define do
  factory :project do
    name "TestProject1"
    desc "This is the desc for TestProject1."
    # action "do"
    # frequency "daily"
  end

  factory :progress do
    comment "This is a comment."
    project_id 1
  end
end
