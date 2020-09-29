flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

flinstone_hash = {}

flinstones.each_with_index do |name, index|
  flinstone_hash[:name] = index
end