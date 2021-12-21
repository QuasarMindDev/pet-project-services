#!/usr/bin/env bash

# Update all repositories
echo "You should not have changes, do you want to continue?" yn
select yn in "Yes" "No"; do
    case $yn in
        Yes )
        cd ..
        for repo in */.git; do ( echo "$repo"; cd "$repo"/.. || exit; git checkout master; ); done
        cd frontend || exit
        for repo in */.git; do ( echo "$repo"; cd "$repo"/.. || exit; git checkout master; ); done
        cd ../backend || exit
        for repo in */.git; do ( echo "$repo"; cd "$repo"/.. || exit; git checkout master; ); done
    break;;
        No ) exit;;
    esac
done
