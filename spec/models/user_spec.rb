require 'rails_helper'

RSpec.describe User, type: :model do
  # Describe - describing unit test
  # Context - as a user, as an admin, or as a viewer

  describe 'validations' do
      it { should validate_presence_of(:first_name) }
      it { should validate_presence_of(:last_name) }
      it { should validate_presence_of(:age) }
  end

  describe 'associations' do
    it { should have_many(:trips)}
  end

end
