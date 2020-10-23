# SPECS
# require "array_to_hash"

# describe "#array_to_hash" do
#   let(:array) {["a", "b", "c"]}

#   it "should build a hash with index keys when called without block" do
#     expect(array_to_hash(array)).to eq({ "0" => "a", "1" => "b", "2" => "c" })
#   end

#   it "should build hash keys executing block on array indices" do
#     expect(array_to_hash(array) { |index| "key#{index}" }).to eq({ "key0" => "a", "key1" => "b", "key2" => "c" })
#   end

# end

def array_to_hash(array)
  # TODO: implement the method :)
  # on commence par creer un hash
  hash = {}
  # on loop dans argument array avec each.index pour recuperer item qui
  # deviendra la cle et index qui pourra ou pas etre utilise
  array.each_with_index do |item, index|
    key = block_given? ? yield(index) : index.to_s
    hash[key] = item
  end
  return hash
end
