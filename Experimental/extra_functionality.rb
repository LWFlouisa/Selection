def self.gyogen
  word_classes = [
    [ ["Le",  "Le"], ["Le",  "La"], ["Le",  "Les"] ],
    [ ["La",  "Le"], ["La",  "La"], ["La",  "Les"] ],
    [ ["Les", "Le"], ["Les", "La"], ["Les", "Les"] ],
  ]
  
  row_options = [0, 1, 2]
  col_options = [0, 1, 2]
  arr_options = [0, 1]
  
  cur_row = row_options.sample
  cur_col = col_options.sample
  cur_arr = arr_options.sample
  
  a = word_classes[cur_row][cur_col][cur_arr]
  
  nouns = [
    [ ["pomme",  "pomme"], ["pomme",  "orange"], ["pomme",  "banane"] ],
    [ ["orange", "pomme"], ["orange", "orange"], ["orange", "banane"] ],
    [ ["banane", "pomme"], ["banane", "orange"], ["banane", "banane"] ],
  ]
  
  row_options = [0, 1, 2]
  col_options = [0, 1, 2]
  arr_options = [0, 1]
  
  cur_row = row_options.sample
  cur_col = col_options.sample
  cur_arr = arr_options.sample
  
  b = nouns[cur_row][cur_col][cur_arr]
  
  adjectives = [
    [ ["rouge",  "rouge"], ["rouge",  "orange"], ["rouge",  "jaune"] ],
    [ ["orange", "rouge"], ["orange", "orange"], ["orange", "jaune"] ],
    [ ["jaune",  "rouge"], ["jaune",  "orange"], ["jaune",  "jaune"] ],
  ]

  row_options = [0, 1, 2]
  col_options = [0, 1, 2]
  arr_options = [0, 1]
  
  cur_row = row_options.sample
  cur_col = col_options.sample
  cur_arr = arr_options.sample
  
  c = adjectives[cur_row][cur_col][cur_arr]
  
  subjects = [
    [["es",    "es"], ["es",    "es ne"]],
    [["es ne", "es"], ["es ne", "es ne"]],
  ]

  row_options = [0, 1]
  col_options = [0, 1]
  arr_options = [0, 1]
  
  cur_row = row_options.sample
  cur_col = col_options.sample
  cur_arr = arr_options.sample
  
  d = subjects[cur_row][cur_col][cur_arr]

  verbs = [
    [["mange", "mange"], ["mange", "jete"]],
    [["jete",  "mange"], ["jete",  "jete"]],
  ]
  
  row_options = [0, 1]
  col_options = [0, 1]
  arr_options = [0, 1]
  
  cur_row = row_options.sample
  cur_col = col_options.sample
  cur_arr = arr_options.sample
  
  e = verbs[cur_row][cur_col][cur_arr]

  adverbs = [
    [["rapidement.", "rapidement."], ["rapidement.", "lentement."]],
    [["lentement.",  "repidement."], ["lentement.",  "lentement."]],
  ]
  
  row_options = [0, 1]
  col_options = [0, 1]
  arr_options = [0, 1]
  
  cur_row = row_options.sample
  cur_col = col_options.sample
  cur_arr = arr_options.sample
  
  f = verbs[cur_row][cur_col][cur_arr]
      
  @phrase = a + " " + b + " " + c + " " + d + " " + e + " " + f
end

def bokewabisab(a, b)
  sleep(1.5)
  
  old_file = File.read(a)
  
  new_file = "#{old_file}"
  
  system("rm #{a}; mkdir #{b}")
  
  File.open("#{b}/#{a}", "w") { |f|
    f.puts new_file
  }
  
  File.open("#{c}", "w") { |f|
    f.puts d
  }
end
