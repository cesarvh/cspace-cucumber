339
330
329
325
323 --> 10:26
341, some fucking how

mvn clean verify -Dcucumber.options="--dry-run --strict" > out.txt
grep "@" out.txt > grepout.txt
--- Edit @ tags yourself
rm out.txt
uniq grepout.txt > out.txt
sort out.txt > fout.txt
uniq fout.txt > latest.txt