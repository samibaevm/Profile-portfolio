"""
Write a simple function that takes as a parameter a date object and returns a boolean value representing whether the date is today or not.

Make sure that your function does not return a false positive by just checking just the day.
"""

from datetime import datetime

def is_today(date):
    first = date
    second = datetime.today() 
    print(date)
    print(datetime.today())
    if first.day == second.day:
        return True
    
    else:
        return False
