import sys
import os
from github import Github
from dotenv import load_dotenv

load_dotenv()

path = os.getenv('FOLDERPATH')
access_token = os.getenv('ACCESSTOKEN')

def create_repository() :
    folder_name = str(sys.argv[1])
    new_path = os.path.join(path, folder_name)
    if not os.path.exists(new_path):
        os.makedirs(new_path)
    g = Github(access_token)
    user = g.get_user()
    repo = user.create_repo(name=folder_name, private=False)
    print(f"Created repository: {folder_name}")

if __name__ == "__main__":
    create_repository()