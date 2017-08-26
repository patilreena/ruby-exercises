require 'terminal-table'

rows = []
rows << ['January','Thailand']
rows << ['February','Colombia']
rows << ['March','Galapagos Islands']
rows << ['April','Morocco']
rows << ['May','Peru']
rows << ['June','Iceland']
rows << ['July','French Polynesia']
rows << ['August','Indonesia']
rows << ['September','Alaska']
rows << ['October','Italy']
rows << ['November','Vietnam']
rows << ['December','Germany']

table = Terminal::Table.new :headings => ['Month', 'Country'], :rows => rows

puts table
