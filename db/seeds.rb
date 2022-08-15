require 'csv'

# seed Pokemon
puts "Generating pokemon..."

# read csv to variable
csv_text = File.read(Rails.root.join('db', 'pokedex.csv'))

# parse csv
csv = CSV.parse(csv_text, headers: true, encoding: 'ISO-8859-1')

counter = 0
csv.each do |row|
  p = Pokemon.create(
    number: row['number'],
    code: row['code'],
    name: row['name'],
    type_one: row['type_one'],
    type_two: row['type_two'],
    colour: row['colour'],
    ability_one: row['ability_one'],
    ability_two: row['ability_two'],
    ability_hidden: row['ability_hidden'],
    generation: row['generation'],
    legendary: row['legendary'],
    mega_evo: row['mega_evo'],
    height: row['height'],
    weight: row['weight'],
    hp: row['hp'],
    atk: row['atk'],
    def: row['def'],
    sp_atk: row['sp_atk'],
    sp_def: row['sp_def'],
    spd: row['spd'],
    total_stat: row['total_stat'],
    img_source: row['img_source']
  )
  counter += 1 if p.persisted?
end

puts "> #{counter} pokemon created (total records: #{Pokemon.count})."

# seed Egg_group
puts "Generating egg_groups..."

# read csv to variable
csv_text = File.read(Rails.root.join('db', 'egg_groups.csv'))

# parse csv
csv = CSV.parse(csv_text, headers: true, encoding: 'ISO-8859-1')

counter = 0
csv.each do |row|
  e = EggGroup.create(
    pokemon_id: row['pokemon_id'],
    name: row['name'],
    group_one: row['group_one'],
    group_two: row['group_two']
  )
  counter += 1 if e.persisted?
end

puts "> #{counter} egg_groups created (total records: #{EggGroup.count})."
