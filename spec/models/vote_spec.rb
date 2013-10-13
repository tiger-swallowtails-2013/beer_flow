describe Vote do
  it {should validate_uniqueness_of(:user_id).scoped_to(:answer_id)}
  it {should belong_to(:user)}
  it {should belong_to(:answer)}
end