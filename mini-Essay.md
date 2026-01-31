
# Protein Weight Calculator: Solution Overview

To solve the protein weight calculator in R:

- I first created a **named vector** mapping each 1-letter amino acid code to its molecular weight in Daltons.
- The function accepts a string (defaulting to my name, "Blessing").
-  I added an input validation and returns early if the input is empty or NULL.
- It converts the input to **uppercase** and splits it into individual characters.
- For each character, it checks if it is a valid amino acid. If so, it gets the corresponding weight; otherwise, it assigns a weight of 0..
- The function **sums the weights** and converts the result to kiloDaltons (kDa) by dividing by 1000.

This approach ensures reliability when handling invalid input, supports case insensitivity, and makes the function reusable for different protein sequences.