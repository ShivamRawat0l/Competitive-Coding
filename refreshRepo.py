import os
from datetime import date
files = [f for f in os.listdir('.') if os.path.isfile(f)]

print(files)
os.system("git pull")
os.system("git add .")
os.system("git commit -m '{}'".format(date.today()))
os.system("git push origin master")
