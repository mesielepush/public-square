# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Like, type: :model do
  let(:user) { build(:user) }

  it 'is valid with valid attributes' do
    like = user.likes.new(post_id: 1, result: 1)
    expect(like.valid?).to be(true)
    expect(like.save).to be(true)
  end

  it 'is invalid with no post' do
    like = user.likes.new(post_id: nil, result: 1)
    expect(like.valid?).to be(false)
    expect(like.save).to be(false)
  end

  it 'is invalid with no user' do
    like = Like.new(post_id: 1, user_id: nil, result: 1)
    expect(like.valid?).to be(false)
    expect(like.save).to be(false)
  end

  context 'ActiveRecord Associations' do
    it { should belong_to(:user) }
  end
end
