require 'rails_helper'

RSpec.describe Address, type: :model do

  describe 'assocaitions' do
    it { should belong_to(:location) }
  end

end
