require 'rails_helper'
require 'faker'

RSpec.describe Listening, type: :model do
  let(:user1) do
    User.create(
      email: Faker::Internet.unique.email ,
      password: 'password',
      password_confirmation: 'password'
    )
  end

  let(:user2) do
    User.create(
      email: Faker::Internet.unique.email,
      password: 'password',
      password_confirmation: 'password'
    )
  end

  it 'is valid with valid attributes' do
    following = user1.listenings.new(other_id: user2.id)
    expect(following.valid?).to be(true)
    expect(following.save).to be(true)
  end

  it 'is invalid with invalid attributes' do
    
    following = user1.listenings.new( other_id:nil)
    expect(following.valid?).to be(false)
    expect(following.save).to be(false)
  end

  context 'ActiveRecord Associations' do
    it { should belong_to(:user) }
    
  end
end
