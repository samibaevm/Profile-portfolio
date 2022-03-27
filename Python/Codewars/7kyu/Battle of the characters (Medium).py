"""
Description:
Groups of characters decided to make a battle. Help them to figure out what group is more powerful. Create a function that will accept 2 variables and return the one who's stronger.

Rules
Each character has its own power:
  A = 1, B = 2, ... Y = 25, Z = 26
  a = 0.5, b = 1, ... y = 12.5, z = 13
Only alphabetical characters can and will participate in a battle.
Only two groups to a fight.
Group whose total power (a + B + c + ...) is bigger wins.
If the powers are equal, it's a tie.
"""

from string import ascii_uppercase , ascii_lowercase

def battle(x: str, y: str) -> str:
    first_player = counting(x)
    second_player = counting(y)
        
    if first_player > second_player:
        return x
    elif first_player < second_player:
        return y
    else:
        return "Tie!"
    
def counting(word):
    point = 0
    for val in word:
        if val in ascii_uppercase:
            point += ascii_uppercase.index(val) + 1
        elif val in ascii_lowercase:
            point += (ascii_lowercase.index(val) + 1) / 2
    return point
