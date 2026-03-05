# Caesar Cipher

## Project Overview

This project is part of [The Odin Project](https://www.theodinproject.com/) curriculum.
It implements a **Caesar Cipher**, a simple encryption technique where each letter in a string is shifted a certain number of places down the alphabet.

For example:

```
Original: Hello
Shift: 5
Encrypted: Mjqqt
```

Non-letter characters like spaces, punctuation, and numbers are left unchanged.

---

## Features

* Encrypts both **uppercase and lowercase letters**
* Handles **wrap-around** (e.g., "z" → "a")
* Preserves **non-alphabetic characters**
* Written in **Ruby** using basic string and ASCII manipulation

---

## How It Works

1. Loop through each character in the input string.
2. Check if the character is a letter.
3. Determine if it’s **uppercase or lowercase** to use the correct alphabet base (`A` or `a`).
4. Convert the letter to its **alphabet position (0–25)**.
5. Add the shift amount and **wrap around using modulo 26**.
6. Convert the shifted position back to a letter.
7. If the character is not a letter, keep it unchanged.
8. Return the new encrypted string.

---

## Usage

```ruby
# Call the Caesar cipher method with a string and a shift value
puts caesar_cipher("Hello, World!", 5)
# Output: Mjqqt, Btwqi!
```

---

## Learning Points

* Working with **ASCII codes** using `.ord` and `.chr`
* Using **modulo arithmetic** to handle wrap-around
* Handling **uppercase and lowercase letters** separately
* Preserving **non-letter characters**
* Structuring a method in Ruby with clean loops and conditional logic
