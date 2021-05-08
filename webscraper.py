import requests
from bs4 import BeautifulSoup
import pandas as pd


url = 'https://ahpvss.com/event-results/'
requests.get(url)
page = requests.get(url)