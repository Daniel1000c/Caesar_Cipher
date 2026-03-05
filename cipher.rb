#Caesar Cipher Function
def caesar_cipher(string,shift)
  #Create result variable to store new string
  result = ""

  #Loop through each character in the string
  string.split("").each do |character|
    #Get current character from the string
    #Check if character is a letter
      
    if character =~ /[[:alpha:]]/
      #If it is:
      
      #Check if base charc code  is uppercase or lowercase
     base = character == character.upcase ? "A".ord : "a".ord

      #Shift letter by shift amount
      #Wrap character around modulo
      alphabet_position = character.ord - base
      shifted_position = (alphabet_position + shift) % 26

       #Convert said character back to letter
      new_char_code = shifted_position + base

      char_string = new_char_code.chr
      
      #Concat to result string
      result << char_string
    else 
      #If character is not a letter, add to result unchanged  
      result << character 
    end
  end

  #Return final result string after loop has finished
 result
end

#Call caesar cipher function
puts caesar_cipher('What a string!',5)