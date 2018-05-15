require 'rails_helper'

RSpec.describe User, type: :model do
  it { should have_many(:videos) }

	# # subject { described_class.new }
 #  user = FactoryGirl.create :user

 #  it "is valid with valid attributes" do
 #  	# subject.email = "test@mail.com"
 #   #  subject.password = "12345678"
 #   #  subject.password_confirmation = "12345678"
 #  	expect(user).to be_valid
 #    # expect(Contact.new(email: "test@mail.com")).to be_valid
 #  end

 #  it "is not valid without a email" do
	#   # contact = Contact.new(email: nil)
	#   # expect(contact).to_not be_valid
 #    # user = User.new(password: "12345678", password_confirmation: "12345678")
 #    user.email = nil
	#   expect(user).to_not be_valid
	# end

	# it "is valid with valid attributes"
 #  it "is not valid without a email"
 #  it "is not valid without a password"
 #  it "is not valid without a password_confirmation"

end