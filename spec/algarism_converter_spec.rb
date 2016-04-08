require "algarism_converter"

describe AlgarismConverter do
	describe "#converter" do
		before { @ac = AlgarismConverter.new }

		context 'convert simple symbols' do
			it 'is possible to convert the symbol I' do
				num = @ac.converter("I")
				expect(num).to eq(1)
			end

			it 'is possible to convert the symbol V' do
				num = @ac.converter("V")
				expect(num).to eq(5)
			end

			it 'is possible to convert the symbol X' do
				num = @ac.converter("X")
				expect(num).to eq(10)
			end
		end

		context 'convert a set of symbols' do
			it 'is possible to convert the symbol II' do
				num = @ac.converter("II")	
				expect(num).to eq(2)
			end

			it "is possible to convert the symbol VIII" do
				num = @ac.converter("VIII")
				expect(num).to eq(8)
			end
		end

		context 'convert complex symbols' do
			it "is possible to convert the symbol IV" do
				num = @ac.converter("IV")
				expect(num).to eq(4) 
			end

			it "is possible to conver the symbol XXIX" do
				num = @ac.converter("XXIX")
				expect(num).to eq(29) 
			end
		end
	end
end