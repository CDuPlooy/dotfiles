# TODO: Modify this function to strip CRLF and only return LF
function lpg(){
	adb shell pm list packages | grep $1 -m 1 | cut -d ":" -f2
}

function lpp(){
	adb shell pm path $(lpg $1) | cut -d ":" -f2
}

function fetch_apk(){
	apk_path=$(adb shell pm path $(lpg $1 | tr -d "\r" | tr -d "\n") | cut -d ":" -f2)
	apk_path=$(echo -n $apk_path | tr -d "\r" | tr -d "\n")
	adb pull $apk_path $2
}

function jadp(){
	find $1 -name '*.class' -exec jad -o -r -sjava {} \;
	find $1 -name '*.class' -exec rm {} \;
}

function lsai(){
	if [ $# -eq 0 ]
  	then
    	   dir=$PWD
	else
	   dir=$1
	fi
	grep -R "import " $dir | cut -d ":" -f2 | cut -d " " -f2 | cut -d ";" -f1 | sort | uniq
}
