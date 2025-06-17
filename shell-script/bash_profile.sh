# .bash_profile
 
# Get the aliases and functions
if [ -f ~/.bashrc ]; then
        . ~/.bashrc
fi
 
# User specific environment and startup programs
# Define color variables
LRED='\033[01;31m'      # Light Red
RED='\033[0;31m'        # Red
YELLOW='\033[0;33m'     # Yellow
BLUE='\033[0;34m'       # Blue
NC='\033[0m'            # No Color
LPURPLE='\033[01;35m'   # Light Purple
LCYAN='\033[01;36m'     # Light Cyan
LIGHTGRAY='\033[00;37m' # Light Gray
LYELLOW='\033[01;33m'   # Light Yellow
GREEN='\033[0;32m'      # Green
LGREEN='\033[01;32m'    # Light Green
 
# Aliases
alias please="sudo"     # Shortcut for sudo
 
# Clean, minimalist prompt with essential info
export PS1="\[$GREEN\]\u \[$BLUE\]\W \[$NC\]$ "

# Change to a specific directory automatically by using
cd /documents/images
