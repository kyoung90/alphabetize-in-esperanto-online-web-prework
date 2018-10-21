def alphabetize(arr)
  # code here
  # my esperanto alphabet
  esperanto_alphabet = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"
  # ascii values that are alphabetwise are same worth if they are in the same order 
  ascii_equivalent = "`abcdefghijklmnopqrstuvwxyz{"

  # Compare the array by changing its values to ones we can more easily compare 
  # so change from esperanto to any ascii code in order and same length
  # and then regular sort by comparing
  # How this sort works is it's basically telling the array that you want
  # to sort the array instead of regular ascii order, that you want to
  # sort based on the translated phrase, not regular phrase.
  # It will then compare the phrases and put them in order based on the
  # translated phrase order but return the original phrases
  arr.sort_by{|phrase| phrase.tr(esperanto_alphabet, ascii_equivalent)}
end