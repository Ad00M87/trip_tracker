require 'rails_helper'

RSpec.describe Trip, type: :model do

  describe 'associations' do
    it { should have_many(:locations) }
    it { should belong_to(:user) }
  end

end
