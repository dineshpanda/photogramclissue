require "rails_helper"

RSpec.describe Vote, type: :model do
  describe "Direct Associations" do
  end

  describe "InDirect Associations" do
  end

  describe "Validations" do
    it { should validate_uniqueness_of(:photo_id).with_message("already liked") }

    it { should validate_presence_of(:photo_id) }
  end
end
