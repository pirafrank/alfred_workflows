import os
import sys
import urllib
import json
import requests
import subprocess

#
# Sample data
#
# data = {
#     "title":options.title,
#     "slashtag":options.slashtag,
#     "destination":options.url,
#     "domain": {
#         "id": "123456aaabbbcccd123456aaabbbcccd",
#         "ref": "/domains/123456aaabbbcccd123456aaabbbcccd"
#     }

# Rebrandly API endpoints
post_uri = 'https://api.rebrandly.com/v1/links'

default_error_title = "Rebrandly shortening: ERROR"
default_error_msg = "Sorry, something went wrong."


def write_to_clipboard(text):
    process = subprocess.Popen(
        'pbcopy', env={'LANG': 'en_US.UTF-8'}, stdin=subprocess.PIPE)
    process.communicate(text.encode('utf-8'))

def notify(title, msg):
    os.system("""
              osascript -e 'display notification "{}" with title "{}"'
              """.format(msg, title))

def shorten_url(post_uri,api_token,data):

    headers = {
      'Content-Type': 'application/json',
      'apikey': api_token
    }

    r = requests.post(post_uri, data=json.dumps(data), headers=headers)

    if r.status_code == 200:
        reply = r.json()
        return reply['shortUrl']
    else:
        msg = "Error: Request exited with code:", r.status_code
        notify(default_error_title, msg)
        return(msg)

#### MAIN SCRIPT ####

# Load parameters
try:
    args = sys.argv[1].split(" ")
    url = args[0]
    slashtag = args[1]
except Exception as e:
    msg = "Error: Have you passed url and slashtag separated by space?"
    notify(default_error_title, msg)
    sys.exit(3)

# Load config
api_token = os.getenv('REBRANDLY_API_TOKEN')
favorite_domain_id = os.getenv('REBRANDLY_FAV_DOMAIN_ID')
print(favorite_domain_id)
if api_token == None or favorite_domain_id == None:
    msg = "Error while loading config. Have you set env vars in Alfred?"
    notify(default_error_title, msg)

# Handling args
if len(url) > 1 and len(slashtag) > 1:
    data = {'destination':url}
    data.update(slashtag=slashtag)
    domain_details = {
        'id': favorite_domain_id,
        'ref': '/domains/'+favorite_domain_id
    }
    data.update(domain=domain_details)

short_url = shorten_url(post_uri, api_token, data)
notify("Rebrandly shortening: Done", short_url)
print(short_url)
write_to_clipboard(short_url)
