require 'user'

describe User do

	let(:user) {User.new}

	it 'creates a user' do
		expect(user).to be_a User
	end

	it 'allows user to rent a bike' do
		user.rent
		expect(user.rent).to be true
	end

	it 'allows user to return a bike' do
		user.return
		expect(user.return).to be true
	end



end