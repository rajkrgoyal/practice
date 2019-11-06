require 'rails_helper'

RSpec.describe Contact, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  let(:valid_attributes) {
    {full_name: 'test', email: 'test@test.com', phone: '919911782811'}
  }
  describe 'creation' do
    it 'can be created' do
      contact = Contact.create(valid_attributes)
      
      expect(contact).to be_valid
    end
  end
end
