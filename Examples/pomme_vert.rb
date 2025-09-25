require "Selection"

a = cette("pomme", "rouge-vert")
b = maisette("pomme", "vert")
c = sinon("pomme", "rouge")

get_statistics(:pomme_rouge_vert, "#{a}",
               :pomme_vert,       "#{b}",
               :pomme_rouge,      "#{c}")
       
statements = [
  [[a, a, a], [a, a, b], [a, a, c]],
  [[b, b, a], [b, b, b], [b, b, c]],
  [[c, c, a], [c, c, b], [c, c, c]],
], [
  [[0.165, 0.165, 0.33], [0.165, 0.165, 0.33], [0.165, 0.165, 0.33]],
  [[0.165, 0.165, 0.33], [0.165, 0.165, 0.33], [0.165, 0.165, 0.33]],
  [[0.165, 0.165, 0.33], [0.165, 0.165, 0.33], [0.165, 0.165, 0.33]],
]

selection_probability = 0.33 * 0.33

## First Statement
row_options = [0, 1, 2]
col_options = [0, 1, 2]
arr_options = [0, 1, 2]

cur_row = row_options.sample
cur_col = col_options.sample
cur_arr = arr_options.sample

@first_statement   = statements[0][cur_row][cur_col][cur_arr]
@first_probability = statements[1][cur_row][cur_col][cur_arr] * selection_probability

## Second Statement
row_options = [0, 1, 2]
col_options = [0, 1, 2]
arr_options = [0, 1, 2]

cur_row = row_options.sample
cur_col = col_options.sample
cur_arr = arr_options.sample

@second_statement   = statements[0][cur_row][cur_col][cur_arr]
@second_probability = statements[1][cur_row][cur_col][cur_arr] * selection_probability

## Third Statement
row_options = [0, 1, 2]
col_options = [0, 1, 2]
arr_options = [0, 1, 2]

cur_row = row_options.sample
cur_col = col_options.sample
cur_arr = arr_options.sample

@third_statement   = statements[0][cur_row][cur_col][cur_arr]
@third_probability = statements[1][cur_row][cur_col][cur_arr] * selection_probability

ouvert("_output/first_statement.txt",  "#{a}",
       "_output/second_statement.txt", "#{b}",
       "_output/third_statement.txt",  "#{c}")
