translation = {
  "Le"  => "The",
  "La"  => "The",
  "Les" => "The",
}, {
  "pomme"  => "apple",
  "banane" => "banane",
  "citron" => "lemon",
}, {
  "rouge"  => "red",
  "orange" => "orange",
  "jaune"  => "yellow",
}

g = genders    = translation[0]
n = nouns      = translation[1]
a = adjectives = translation[2]

word_types = [
  [[g, g, g], [g, g, n], [g, g, a]],
  [[n, n, g], [n, n, n], [n, n, a]],
  [[a, a, g], [a, a, n], [a, a, a]],
]

row_options = [0, 1, 2]
col_options = [0, 1, 2]
arr_options = [0, 1, 2]

cur_row = row_options.sample
cur_col = col_options.sample
cur_arr = arr_options.sample

current_word = word_types[cur_row][cur_col][cur_arr]

if    current_word ==    genders;
  possible_words = [
    [["Le",   "Le", "Le"], ["Le",   "Le", "La"], ["Le",   "Le", "Les"]],
    [["La",   "La", "Le"], ["La",   "La", "La"], ["La",   "La", "Les"]],
    [["Les", "Les", "Le"], ["Les", "Les", "La"], ["Les", "Les", "Les"]],
  ]
  
  row_options = [0, 1, 2]
  col_options = [0, 1, 2]
  arr_options = [0, 1, 2]

  cur_row = row_options.sample
  cur_col = col_options.sample
  cur_arr = arr_options.sample

  current_option = possible_words[cur_row][cur_col][cur_arr]
  
  print "#{current_option}: "
  puts genders[current_option]
elsif current_word ==      nouns;
  p = "pomme"
  b = "banane"
  c = "citron"

  possible_words = [
    [[p, p, p], [p, p, b], [p, p, c]],
    [[b, b, p], [b, b, b], [b, b, c]],
    [[c, c, p], [c, c, b], [c, c, c]],
  ]
  
  row_options = [0, 1, 2]
  col_options = [0, 1, 2]
  arr_options = [0, 1, 2]

  cur_row = row_options.sample
  cur_col = col_options.sample
  cur_arr = arr_options.sample

  current_option = possible_words[cur_row][cur_col][cur_arr]

  print "#{current_option}: "
  puts nouns[current_option]
elsif current_word == adjectives;
  r = "rouge"
  o = "orange"
  j = "jaune"

  possible_words = [
    [[r, r, r], [r, r, o], [r, r, j]],
    [[o, o, r], [o, o, o], [o, o, j]],
    [[j, j, r], [j, j, o], [j, j, j]],
  ]
  
  row_options = [0, 1, 2]
  col_options = [0, 1, 2]
  arr_options = [0, 1, 2]

  cur_row = row_options.sample
  cur_col = col_options.sample
  cur_arr = arr_options.sample

  current_option = possible_words[cur_row][cur_col][cur_arr]

  print "#{current_option}: "
  puts adjectives[current_option]
else
  puts "No translation available."
end
