# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :importtodb do
    fileupload "MyString"
    tag "MyString"
    status "MyString"
  end
end
