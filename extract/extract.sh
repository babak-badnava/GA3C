logfile='../ga3c/log'
tmpfile=tmp.log
grep 'Time:' $logfile > $tmpfile

cat $tmpfile | sed -n 's/\]/ /gp' | awk '{print $2","$4","$6","$12","$14","$16","$18","$20}' > tmp.csv

wc -l tmp.csv

# mkdir extract
# grep -oP 'Time:\s+[0-9]+' $logfile > extract/Time.txt
# grep -oP 'Episode:\s+[0-9]+' $logfile > extract/Episode.txt
# grep -oP '\sScore:\s+[-]*[0-9]+[.][0-9]+' $logfile > extract/Score.txt
# grep -oP 'PPS:\s+[0-9]+\s+TPS:\s+[0-9]+' $logfile > extract/PPS_TPS.txt
# grep -oP 'NT:\s+[0-9]+\s+NP:\s+[0-9]+\s+NA:\s+[0-9]+' $logfile > extract/NT_NP_NA.txt
#
#
#
#
#
# cd extract
#
# wc -l Time.txt
# wc -l Episode.txt
# wc -l Score.txt
# wc -l PPS_TPS.txt
# wc -l NT_NP_NA.txt


