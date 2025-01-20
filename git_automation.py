import subprocess
from datetime import datetime

def git_push():
    try:
        # Git commands
        subprocess.run(["git", "add", "."])
        subprocess.run(["git", "commit", "-m", f"Auto commit - {datetime.now().strftime('%Y-%m-%d %H:%M:%S')}"])
        subprocess.run(["git", "push"])
        print("Changes pushed to GitHub successfully!")
    except Exception as e:
        print(f"An error occurred: {str(e)}")

if __name__ == "__main__":
    git_push()
