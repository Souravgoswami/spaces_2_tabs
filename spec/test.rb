load File.join(Dir.pwd, 'core_conversion.rb')

describe 'Spaces to Tabs' do
	it 'converts even number of spaces to tabs' do
		expect("\s\shello".spaces_to_tabs).to eq("\thello")
		expect("\s\s\s\shello".spaces_to_tabs).to eq("\t\thello")
	end

	it 'does not affect string with anything other than space' do
		expect('hello'.spaces_to_tabs).to eq('hello')
	end

	it 'leaves odd number of spaces as it is' do
		expect("\s\s\shello".spaces_to_tabs).to eq("\s\s\shello")
	end

	it 'does not affect other parts of the string' do
		expect("\s\s\shello\s\s\s\shi!".spaces_to_tabs).to eq("\s\s\shello\s\s\s\shi!")
		expect("\s\shello\s\s\s\shi!".spaces_to_tabs).to eq("\thello\s\s\s\shi!")
	end

	it 'works fine with string of any characters and also multiline strings' do
		expect("\s\shello\n\s\s\shi!\n\s\sBye!".spaces_to_tabs).to eq("\thello\n\s\s\shi!\n\tBye!")
	end

	it 'does not affect any white-space characters other than a space' do
		expect("\t\r\r\t\thello\n\n\nhi!\rBye!".spaces_to_tabs).to eq("\t\r\r\t\thello\n\n\nhi!\rBye!")
	end
end
