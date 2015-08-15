grep -RniI "and" / > out
awk -F ":" '{print $1}' out > out2
zip archive -@ < out2
rm out out2
