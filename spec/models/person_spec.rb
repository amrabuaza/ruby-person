RSpec.describe Person, type: :model do
  describe 'Associations' do
    it { is_expected.to belong_to(:parent).optional }
    it { is_expected.to have_many(:children).with_foreign_key(:parent_id).dependent(:destroy) }
    it { is_expected.to have_many(:grandchildren).through(:children) }
  end

  describe 'Validations' do
    it { is_expected.to validate_presence_of(:name) }
  end
end
