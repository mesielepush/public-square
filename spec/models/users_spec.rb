# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { build(:user) }

  it 'is valid with valid attributes' do
    expect(user.valid?).to be(true)
    expect(user.save).to be(true)
  end

  it 'is invalid with invalid mail' do
    user.email = ''
    expect(user.valid?).to be(false)
    expect(user.save).to be(false)
  end

  context 'ActiveRecord Associations' do
    it { should have_many(:posts) }
    it { should have_many(:likes) }
    it { should have_many(:listenings) }
  end

  context 'Validations' do
    it { should validate_presence_of(:email) }
    it { should validate_length_of(:email).is_at_least(4) }
    it { should validate_length_of(:description).is_at_most(250), allow_nil: true }
  end
end
