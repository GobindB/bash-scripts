BEGIN{FS="[:]"}
$1 ~ /Savage$/{print $1 " " $2}
/^Chet/{print $3 " " $4}
$3 == 250 {print $1}