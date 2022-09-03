# ABOUT:
This project uses Python, Shell Scripting and the Github API to automate the creation of repositories 

# INSTALL:

    git clone https://github.com/sivuyilemene/repo-automation.git
    cd repo-automation
    pip install requirements.txt
    touch .env
    Then open the .env file  and store your folder path, Github access token and Github username. Use the format provided at the bottom of README.
    source ~/.my_commands.sh
    
# USAGE:

    To run script type "create <repository-name>"

# .env FILE FORMAT:

    ACCESSTOKEN="your-accesstoken-here"
    USERNAME="your-username-here"
    FOLDERPATH="your-folder-path-here"


# HOW TO GENERATE AN ACCESS TOKEN:

    Go to settings->Developer settings->Personal access tokens
    Then generate one access token with desired scopes
    Then copy the access token before changing the tab