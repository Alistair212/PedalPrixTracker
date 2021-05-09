import requests

#Constants
fileOutput = r"C:\Users\User\OneDrive\Desktop\txt.txt"
scoreb = "https://www.ahpvss.com/admin/aipp.php"

#Define load websites html
def raw(url):
    response = requests.get(url)
    data = response.text
    return data

##Define write to file method
def writefile():
	f = open(fileOutput, 'w')
	f.write(raw(scoreb))
	f.close()

writefile()