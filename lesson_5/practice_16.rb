DIGITS = %w(1 2 3 4 5 6 7 8 9 a b c d e f)

def generate_UUID
  counter = 0
  uuid = ""
  sections = [8, 4, 4, 4, 12]

  sections.each do |section|
    section.times { uuid += DIGITS.sample }
    uuid += '-'
  end
  uuid
end

puts generate_UUID
