import os
from datetime import date

acceptedExtentions=['cpp','js','tsx','py','c','rs','go','java']


files = [f for f in os.listdir('.') if os.path.isfile(f)]

def checkIfValid(file):
    valid = False;
    if(file=="refreshRepo.py"):
        return False;
    for extension in acceptedExtentions :
        if(len(file.split('.')) < 2): 
            return False; 
        if(extension == file.split('.')[1]):
            valid=True; 
    return valid; 


def moveFilesToFolder(files):
    for file in files: 
        with open(file) as codeFile :
            websiteName = codeFile.readline().split('.com')[0].split('www.')[-1].lower()
            questionType = codeFile.readline().split(' ')[-1].lower().replace("\n",'');
            try:
                os.mkdir(websiteName); 
            except: 
                pass
            os.chdir(websiteName)
            try : 
                os.mkdir(questionType)
            except:
                 pass
            os.chdir("..")
        os.replace("{}".format(file),"./{}/{}/{}".format(websiteName,questionType,file))
            
def UploadToGithub():
    os.system("git pull")
    os.system("git add .")
    os.system("git commit -m '{}'".format(date.today()))
    os.system("git push origin main")


newFiles = filter(checkIfValid,files)

moveFilesToFolder(newFiles);

UploadToGithub(); 
