require 'rails_helper'

RSpec.describe Surgery, type: :model do
  describe 'validations' do
    it {should validate_presence_of :title}
    it {should validate_presence_of :day}
    it {should validate_presence_of :or_number}
  end
  describe 'relationships' do
    it {should belong_to :hospital}
    it {should have_many :surgery_doctors}
    it { should have_many(:doctors).through(:surgery_doctors)}
  end
end