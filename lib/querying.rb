def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT books.title, books.year FROM books join series on books.series_id = series.id ORDER BY books.year limit '3';"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT characters.name, characters.motto FROM characters WHERE LENGTH(characters.motto) = (SELECT max(LENGTH(characters.motto))FROM characters) limit '1';"
end


def select_value_and_count_of_most_prolific_species
  "SELECT characters.species, count(characters.species) FROM characters where characters.species = 'human';"
end

def select_name_and_series_subgenres_of_authors
  "SELECT authors.name, subgenres.name FROM authors JOIN series ON series.author_id = authors.id JOIN subgenres ON subgenres.id = series.subgenre_id;"
end

def select_series_title_with_most_human_characters
  "SELECT series.title FROM series 
  JOIN books ON series.id = books.series_id 
  JOIN character_books ON books.id = character_books.book_id 
  JOIN characters ON characters.id = character_books.character_id
  WHERE characters.species = 'human' 
  GROUP BY characters.species 
  ORDER BY COUNT(characters.species) DESC LIMIT 1"
end

def select_character_names_and_number_of_books_they_are_in
  "SELECT characters.name, COUNT(*) FROM character_books join characters on character_books.character_id = characters .id GROUP BY characters.name ORDER BY count(*) DESC, characters.name;"
end
