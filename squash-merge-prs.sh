for pr in $(gh pr list --json number --jq 'reverse | .[].number'); do gh pr view $pr; echo -n "Squash merge #$pr? (y/n) "; read answer; [ "$answer" = "y" ] && gh pr merge $pr --squash; done
