import pytest
from datetime import datetime
from app import day_suffix

from app import app

def test_day_suffix():
    assert day_suffix('21') == "st"
    assert day_suffix('02') == "nd"
    assert day_suffix('23') == "rd"
    assert day_suffix('11') == "th"

@pytest.fixture 
def client():
    with app.test_client() as app_client:
        yield app_client 

def test_date_time(client):
    response = client.get('/')
    current_time = datetime.now()
    month = current_time.strftime("%b")
    day = current_time.day
    year = current_time.year
    hour_minute = current_time.strftime("%H:%M")
    formated_current_time = f"{month} {day}{day_suffix(day)}, {year}, {hour_minute}"
    assert response.data == formated_current_time.encode()


