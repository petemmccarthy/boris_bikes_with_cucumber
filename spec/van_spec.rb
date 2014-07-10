require 'van'

describe Van do
	it 'creates a van' do
		van = Van.new
		expect(van).to be_a Van
	end


end