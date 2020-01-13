function mktmpd(){
	OLD_DIRECTORY=$PWD
	NEW_DIRECTORY=$(mktemp -d | tr -d "\n")
	echo $NEW_DIRECTORY
	cd $NEW_DIRECTORY
}
