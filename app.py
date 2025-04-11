from flask import Flask
from datetime import datetime

app = Flask(__name__)

def day_suffix(day):
    if day in ['01', '21', '31']:
        return "st"
    elif day in ['02', '22']:
        return "nd"
    elif day in ['03', '23']:
        return "rd"
    else:
        return "th"

@app.route('/')
def date_time():
    current_time = datetime.now()
    month = current_time.strftime("%b")
    day = current_time.day
    year = current_time.year
    hour_minute = current_time.strftime("%H:%M")
    formated_current_time = f"{month} {day}{day_suffix(day)}, {year}, {hour_minute}"
    return formated_current_time

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=8089)
