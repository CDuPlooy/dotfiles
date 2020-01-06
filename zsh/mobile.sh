function lpg(){
	adb shell pm list packages | grep $1 -m 1 | cut -d ":" -f2
}
