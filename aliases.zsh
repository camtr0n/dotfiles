# Shortcuts
alias copyssh="pbcopy < $HOME/.ssh/id_ed25519.pub"
alias reload="source $HOME/.zshrc"
alias df="subl $HOME/.dotfiles"
alias reloaddns="dscacheutil -flushcache && sudo killall -HUP mDNSResponder"
alias ll="/opt/homebrew/opt/coreutils/libexec/gnubin/ls -AhlFo --color --group-directories-first"
alias phpstorm='open -a /Applications/PhpStorm.app "`pwd`"'
alias pycharm='open -a /Applications/PyCharm.app "`pwd`"'
alias shrug="echo '¯\_(ツ)_/¯' | pbcopy"
alias c="clear"
alias s='subl'

# Navigation
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

# Directories
alias dotfiles="cd $DOTFILES"
alias library="cd $HOME/Library"
alias desktop="cd $HOME/Desktop"
alias work="cd $HOME/Developer/replicated/data"
alias dev="cd $DEV"
alias home="cd $HOME"


# Path
alias path='echo $PATH | tr -s ":" "\n"'
alias cleanpath='typeset -U path && path'

# dbt
alias dbt_reset="dbt clean && dbt deps && ../scripts/get_dbt_prod_artifacts.sh && dbt ls -s state:modified --resource-type model"
alias dra="dbt_refresh; dbt_data_refresh"
alias dras="dbt clean; dbt deps; ../scripts/get_dbt_prod_artifacts.sh"
alias dl="dbt ls -s state:modified"
alias dr="dbt run -s state:modified"
alias drm="dbt run -s"
alias dt="dbt test -m state:modified" # --exclude test_name:relationships test_name:equal_rowcount
alias dtm="dbt test" # --exclude test_name:relationships test_name:equal_rowcount -m
alias drt="dr && dt"
alias get-pr-template="cat ~/Developer/replicated/data/.github/pull_request_template.md | pbcopy"
alias 2xl="DBT_PROFILE_WAREHOUSE=transforming_2xl"

# GitHub
alias npr="gh pr create -a camtr0n --web --label 'type::feature' -F ~/Developer/replicated/data/.github/pull_request_template.md"

# Git
alias gs="git status"
alias gb="git branch"
alias gc="git checkout"
alias gl="git log --oneline --decorate --color"
alias amend="git add . && git commit --amend --no-edit"
alias commit="git add . && git commit -m"
alias curr="git rev-parse --abbrev-ref HEAD"
alias diff="git diff"
alias force="git push --force"
alias nah="git clean -df && git reset --hard"
alias oops="git reset --soft HEAD~1"
alias nuke="git clean -df && git reset --hard"
alias pop="git stash pop"
alias pull="git pull"
alias push="git push"
alias resolve="git add . && git commit --no-edit"
alias stash="git stash -u"
alias unstage="git restore --staged ."
alias wip="commit wip"
alias main="git checkout main && pull"
alias mmain="git merge main"
alias last="git checkout -"
alias recent="git recent -n 5"
alias update="main && last && mmain"

#Spectacles
alias spec="spectacles sql -v --base-url $LOOKER_BASE_URL --client-id $LOOKER_CLIENT_ID --client-secret $LOOKER_CLIENT_SECRET --project replicated --branch 'cameronmoore/sc-65682/add-contract-links-to-start-date-in-dim-contracts'"