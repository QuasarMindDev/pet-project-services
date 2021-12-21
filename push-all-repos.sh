echo "Do you want to continue?" yn
select yn in "Yes" "No"; do
    case $yn in
        Yes )
        cd ..
        for repo in */.git; do ( echo "$repo"; cd "$repo"/.. || exit; git push; ); done
        cd frontend || exit
        for repo in */.git; do ( echo "$repo"; cd "$repo"/.. || exit; git push; ); done
        cd ../backend || exit
        for repo in */.git; do ( echo "$repo"; cd "$repo"/.. || exit; git push; ); done
    break;;
        No ) exit;;
    esac
done