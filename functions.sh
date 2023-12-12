
function optimizeGit(){
    git fsck
    git gc
    git prune
    echo "git optimized"
}
function sendf() {
    echo stuff | nail -a $1 -s files clintonsteiner@gmail.com
}
ff () { find . -name "*$1*" -ls ;}
