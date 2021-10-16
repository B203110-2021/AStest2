pwd
ls
help ls
man
man man
pwd
touch myfavoritefile.txt
ls
ls-l
ls -l
help ls
pwd
echo"This is a lecture on Linix"
echo "This is a Lecture on Linix"
echo "We are in a lecture">>somenewfile.txt
echo "Today is Friday">>somenewfile.txt
ls -l
cp somenewfile.txt anotherfile.txt
ls -l
cp/localdisk/data/BPSM/Lecture02/example_people_data.tsv anotherfile.txt
cp /localdisk/data/BPSM/Lecture02/example_people_data.tsv anotherfile.txt
ls -l
mkdir MyFolder1
ls -Irt
mv somenewfile.txt MyFolder1
ls -IrtR
pwd
pwd
ls -Irt
ls -IrtR
ls -Irt/localdisk/data/BPSM/Lecture02/example_people_data.tsv anotherfile.txt
ls -Irt MyFolder1
pwd
cd MyFolder1
pwd
cp ../anotherfile.txt.
cp../anotherfile.txt.
ls -Irt
ls -Irt a*
pwd
cp ../anotherfile.txt.
cp ../another/localdisk/data/BPSM/Lecture02/example_people_data.tsv anotherfile.txt
pwd
cp ../anotherfile.txt .
ls -Irt
ls -Irt a*
chmod 755 anotherfile.txt
ls -l anotherfile.txt
chmod 600 anotherfile.txt
ls -l anotherfile.txt
chmod 740 anotherfile.txt
ls -l anotherfile.txt
wc -l anotherfile.txt
pwd
mkdir<test927>
mkdir <test>
cat anotherfile|grep"uk"|awk'($1=="Madonna")'
cat anotherfile.txt|grep"uk"|awk'($1=="Madonna")'
cat myfavoritefile
cat myfavoritefile.txt
Cat myfavoritefile.txt
cd -
pwd
cd -
cd..
cd ..
awk '($2>10)'myfavoritefile
awk '{ if($2>10){a=a+1;}}'myfavoritefile
data
date
date -u
date +%s
ps
man ps
quit
ps -au
ps -au user1
ps aux
qiut
gzip file1
gzip anotherfile
gzip anotherfile.txt
grep "motif" file1
pwd
echo "apple" > file1.txt
echo "motif1" >file1.txt
grep "apple" file1.txt
grep"apple" fileq
grep"apple" file1
grep "apple" file1
grep "apple" file1.txt
grep "^apple" file1.txt
cat file1 | grep "apple"
cat file1.txt | grep "apple"
pwd
ks
ls
cd fileq.txt
cd file1.txt
tail file1
tail file1.txt
grep grep "apple" file1.txt
grep "apple" file1.txt
cp example_people_data.tsv
cp example_people_data.tsv /localdisk/home/s2258074/
cd /localdisk/data/BPSM/Lecture03
cp example_people_data.tsv
cp example_people_data.tsv /localdisk/home/s2258074/
grep -v "apple" file1.txt
grep -v "apple" file1
cd /localdisk/home/s2258074/
grep -v "apple" file1
grep -v "apple" file1.txt
grep "apple" file1.txt
awk '($2>10)' file1 txt
awk '($2>10)' file1.txt
awk '{ if($2>10){a=a+1;}}' file1.txt
grep -c "apple" file1.txt
head file1.txt
echo "apple">file1.txt
tail file1.txt
grep "apple" file1.txt
grep -c "apple" file1.txt
grep -w "apple" file1.txt
cd example_people_data.tsv
head example_people_data.tsv
more example_people_data.tsv
at example_people_data.tsv | wc -l
cat example_people_data.tsv | wc -l
cat example_people_data.tsv | awk '{
FS="\t" ;
if(NF == 7)
{print $0 ;}
}' | wc -l
cat example_people_data.tsv | awk '{
FS="\t" ;
if(NF != 7)
{print "Not 7 fields: ",$0 ;}
}'
wc -l example_people_data.tsv
head example_people_data.tsv
tail example_people_data.tsv
grep -v "name" example_people_data.tsv | awk '{
FS="\t" ;
if(NF == 7)
{print $0 ; }
}' | wc -l
grep -v "name" example_people_data.tsv | awk '{
FS="\t" ;
if(NF == 7 && $1 != "")
{print $0 ; }
}' | wc -l
awk '{
FS="\t" ;
if(NF == 7 && $1 != "" && $1 != "name")
{print $0;}
}' example_people_data.tsv | wc -l
grep "Jan" example_people_data.tsv
grep -i "Jan" example_people_data.tsv
cut -f1 example_people_data.tsv | grep "Jan"
cut -f1 example_people_data.tsv | grep -wc "Jan"
awk '($1 == "Jan")' example_people_data.tsv | wc -l
cut -f7 example_people_data.tsv |    sort |    uniq -c |    sort -k1,1nr |    head -5
grep "Mozambique" example_people_data.tsv | awk '{
FS="\t" ;
if($6 <= 1971)
{ print $0 ; }
}'
awk '{
FS="\t" ;
if($6 <= 1971 && $7 == "Mozambique")
{ print $0 ; }
}' example_people_data.tsv | wc -l
grep "edu" example_people_data.tsv | wc -l
grep -c "edu" example_people_data.tsv
cut -f2 example_people_data.tsv | grep "edu" | wc -l
cut -f2 example_people_data.tsv | grep "edu$" | wc -l
grep "\.edu" example_people_data.tsv | sort -k7,7 -k1,1r
grep "\.edu$" example_people_data.tsv | sort -k7,7 -k1,1r
echo $USER
cd
cd $HOME
ls -al
mkdir -p LectureExercises/Lecture04
cd LectureExercises/Lecture04
pwd
cd ~/LectureExercises
pwd
git init
ls -lR .git
rm -fr .git
ls -l .git
undelete .git
ls ~/Desktop/Wastebasket
Initialized empty Git repository in /localdisk/home/s0000000/LectureExercises/.git/
git config
git config --local user.name "B203110-2021"
git config --local user.email "s2258074@ed.ac.uk"
Initialized empty Git repository in /localdisk/home/s0000000/LectureExercises/.git/
git config
git config --local user.name"B203110-2021"
git config --local user.email"s2258074@ed.ac.uk"
git config --global core.editor "nano -w"
git config --list
git config --global core.editor "gedit --wait --new-window"
git config --global core.autocrlf input
git config --global alias.st status
git config --list | grep "core"
git config core.editor
git config --list | grep "user"
git config --local user.name "B203110-2021"
echo $USER
cd $HOME
ls -al
mkdir -p LectureExercises/Lecture04
cd LectureExercises/Lecture04
pwd
cd ~/LectureExercises
pwd
git init
ls -lR .git
git config
git config --local user.name "B203110-2021"
git config --local user.email "s2258074@ed.ac.uk"
git config --global core.editor "nano -w"
git config --list
git config --global core.editor "gedit --wait --new-window"
git config --global core.autocrlf input
git config --global alias.st status
git config --list | grep "core"
git config core.editor
git config --list | grep "user"
cat ~/.gitconfig
cat ~/LectureExercises/.git/config
git commit -a
touch .gitignore
echo -e "mypasswordsfile\n*.pdf\n*.c\n*.log" >> .gitignore
echo -e "**/fastq.gz" >> .gitignore
cat .gitignore
git check-ignore -v *
git clean --help
git status
git st
echo -e "# This line has motif1 and motif1 in it \n# This line has motif2 only" > motif_file.txt
cat motif_file.txt
git add motif_file.txt
git add .gitignore
git commit -m "First file added"
git st
zip -m CodeFiles.zip motif_file.txt
unzip -l CodeFiles.zip
git add CodeFiles.zip
git commit -m "CodeFiles all done and zipped"
git st
git log
git log --oneline
echo "# This line has motif3 on it" >> motif_file.txt
cat motif_file.txt
echo "# This line has motif3 on it" >> motif_file.txt
cat motif_file.txt
cat motif_file.txt <(echo "# This line has motif4 on it") > motif_file2.txt
cat motif_file2.txt
zip -u CodeFiles.zip motif_file*
git add motif_file*
git add CodeFiles.zip
git commit -m "Additional motif files, and updated zip file"
git log
git config --global alias.lo "log --oneline"
git lo
touch someotherfile.sh
zip -u CodeFiles.zip someotherfile.sh
ls -al
git add someotherfile.sh
git commit -m "Added the someotherfile.sh shell script"
git reset HEAD someotherfile.sh
cat someotherfile.sh
echo "Some random text" >> someotherfile.sh
cat someotherfile.sh
git add someotherfile.sh
git commit -m "Second version of the someotherfile.sh shell script"
zip -f CodeFiles.zip someotherfile.sh*
git add CodeFiles.zip
git commit -m "Updated version of zip"
git st
cat someotherfile.sh
echo "More random text" >> someotherfile.sh
cat someotherfile.sh
git add someotherfile.sh
git commit -m "Third version of the someotherfile.sh shell script"
git st
git lo
echo -e "# This is my better script\n# Done using different approaches" > my_cool_script.sh
cat my_cool_script.sh
git add my_cool_script.sh
git commit -m "Added my_cool_script"
git lo
echo "# This is definitely my better script" >> my_cool_script.sh
cat my_cool_script.sh
git checkout my_cool_script.sh
cat my_cool_script.sh
echo "# This script is not going to work" >> my_cool_script.sh
cat my_cool_script.sh
echo "# This script is not good" >> my_cool_script.sh
cat my_cool_script.sh
git add my_cool_script.sh
git commit -m "I am not sure cool script is actually any good"
cat my_cool_script.sh
zip CodeFiles.zip my_cool_script.sh
zip -u CodeFiles.zip
git add CodeFiles.zip
git commit -m "Updated contents of zip to include coolscript"
git add my_cool_script.sh
git commit -m "I am not sure cool script is actually any good"
git add CodeFiles.zip
git commit --amend
git lo
git tag -a v1.0 125f2bd -m "A very preliminary version 1"
git tag -a v2.0 -m "Version 2"
git tag
git show v1.0
git tag -a v1.2 125f2bd -m "A very preliminary version 1.2"
git tag
git tag -d v1.0
git show v1.2 | grep commit
git lo
cat my_cool_script.sh
git checkout HEAD
cat my_cool_script.sh
git checkout HEAD~1
git st
cat my_cool_script.sh
git checkout master
git st
git lo
git checkout HEAD~3
git branch -v
git lo
cat my_cool_script.sh
ls
git checkout master
cat my_cool_script.sh
git st
git lo
git tag
cat someotherfile.sh
git checkout -b Version1.2 v1.2
cat someotherfile.sh
git checkout master
git checkout -b Version1.2 v1.2
git checkout Version1.2
ls
git lo
cat someotherfile.sh
echo -e "This script has achieved total perfection now,\nso I am going to finish things off and call it done." >> someotherfile.sh
cat someotherfile.sh
git lo
cat someotherfile.sh
git checkout master
ls
get lo
git lo
cat someotherfile.sh
git add someotherfile.sh
git commit -m "Final version of the someotherfile.sh shell script prior to merge"
git lo
cat someotherfile.sh
git checkout master
cat someotherfile.sh
git merge Version1.2
s
save
ls
which awk
awk '($4 > 100)' someinputfile
ls -al $HOME/LectureExercises/
mkdir -p ~/LectureExercises/Lect_05 ; cd ~/LectureExercises/Lect_05
pwd
BEGIN {
FS="\t";OFS="_";
}BEGIN {FS="\t";OFS="_";}
if($1 != "#");   { print "Currently doing "count ; total=total + ($12 * $3)
  }
}BEGIN {FS="\t";OFS="_";}
BEGIN {FS="\t";OFS="_";}
{ count++; if($1 != "#");   { print "Currently doing "count ; total=total + ($12 * $3)
#!/usr/bin/awk -f
BEGIN {
FS="\t";OFS="_";
}
BEGIN {
BEGIN {FS="\t";OFS="_";
}BEGIN {FS="\t";OFS="_";
BEGIN {FS="\t";OFS="_"; }
BEGIN {FS="\t";OFS="_";}
{ count++; if($1 != "#");   { print "Currently doing "count ; total=total + ($12 * $3)
  }
}END{
print "The total for "count" lines was " int(total) > "awkoutputfile.txt";
print "Script run complete." >> "awkoutputfile.txt" ;
print "Script run complete."
system("ls -alrt *awk*")
}pwd
pwd
bash
#!/usr/bin/awk -f
echo $SHELL
cal
start in homespace
inputdata from somewhere_0 to command1 then output to somewhere_1
inputdata from somewhere_1 to command2 then output to somewhere_2
start in homespace
shell_script1 (invoked by user)
shell_script2 (invoked by shell_script1)
shell_script3 (invoked by shell_script2)
final result to homespace
type -a echo
type -a date
type -a ls
type -a ll
ls -al /etc/profile.d
cd
pwd
ls -alrt
ls.b*
ls .b*
tail -1 .bash_history
cat .bashrc
cd
touch.bash_profile
ls _al.bash*
touch .bash_profile
ls -al .bash*
gedit .bash_profile &
cat .bash_profile
ls -al .bash*
.bash_profile
./.bash_profile
ls -al .bash_profile
chmod 700 .bash_profile
ls -al .bash*
./.bash_profile
a
source .bash_profile
a
bash
a
echo "alias a='echo -e \"### Actually, I only love doughnuts ###\"' " >> .bashrc
a
echo "alias a='echo -e \"### Actually, I only love doughnuts ###\"' " >> .bashrc
a
echo "alias a='echo -e \"### Actually, I only love doughnuts ###\''' ''>> .bashrc
a

quit
exit
a
exit
a

cd /localdisk/data/BPSM/Lecture03
cp example_people_data.tsv LectureExercises
cp example_people_data.tsv
cp example_people_data.tsv /localdisk/home/s2258074/
cd
mkdir -p LectureExercises/Lect_05
cd ~/LectureExercises/Lect_05
cp /localdisk/data/BPSM/Lecture03/example_people_data.tsv .
ls LetureExercises
ls
head -5 example_people_data.tsv
git add example_people_data.tsv
git commit -m "Added the example_people_data.tsv file from Lecture03/Lect_05"
git commit -m "Added the example_people_data.tsv file from Lect_05"
cd /localdisk/home/s2258074/
cd /localdisk/home/s2258074/LectureExercises
cp /localdisk/data/BPSM/Lecture03/example_people_data.tsv .
mkdir -p LectureExercises/Lecture03
cd~/LectureExercises/Lect_05
cd ~/LectureExercises/Lecture03
mkdir -p LectureExercises/Lecture03
cd
cdLectureExercises/Lecture03
cd LectureExercises/Lecture03
cd /localdisk/home/s2258074/LectureExercises
mkdir -p Lecture03
cp /localdisk/data/BPSM/Lecture03/exampl                                               e_people_data.tsv .
cp /localdisk/data/BPSM/Lecture03/example_people_data.tsv .
cd /localdisk/home/s2258074/LectureExercises/Lecture03
cp /localdisk/data/BPSM/Lecture03/example_people_data.tsv .
head -5 example_people_data.tsv
git add example_people_data.tsv
git commit -m "Added the example_people_data.tsv file from Lecture03/Lect_05"
git lo
set | head -20
echo $HOSTNAME
echo $HOSTTYPE
echo $USER
echo $HOME
echo $myfirstvariable
echo ${myfirstvariable}
echo ${myfirstvariable:="BPSM"}
echo ${myfirstvariable}
echo $myfirstvariable" is cool"
mysecondvariable=$(echo $myfirstvariable" is cool")
echo $mysecondvariable
echo {$mysecondvariable}
echo ${myfirstvariable}
myfirstvariable="Murchison"
echo ${myfirstvariable}
echo ${myfirstvariable:="BPSM"}
unset myfirstvariable
echo ${myfirstvariable}
echo ${myfirstvariable:="BPSM"}
unset myfirstvariable
echo $myfirstvariable
echo ${where_am_i:=Edenburghe}
echo $where_am_i
echo ${where_am_i/e/i}
echo ${where_am_i//e/i}
echo $where_am_i
where_am_i=$(echo ${where_am_i/e/i})
echo $where_am_i
echo ${where_am_i:5}
echo ${where_am_i:5:4}
echo ${where_am_i:=Edenburghe}
echo $where_am_i
unset $where_am_i
echo $where_am_i
echo "3\n4\n5" > myinputfile.tsv
cat myinputfile.tsv
echo -e "3\n4\n5" > myinputfile.tsv
cat myinputfile.tsv
echo "The date is $(date)"
now=$(date +"%d_%m_%Y")
echo "Today is $now"
echo -e "Today is \t$now"
mycomputer=$HOSTNAME
myfiles=$(ls *awk*)
echo "$myfiles"
echo $myfiles
echo -e "### These are my files:\n$myfiles"
ls -1 *awk* > myfiles.list
cat myfiles.list
echo $now
read d1 d2 d3 <<< "$now"
echo -e "$d1"
IFS="_"
echo $now
read d1 d2 d3 <<< "$now"
echo -e "$d1"
echo -e "$d3"
unset d3
read -r d1 d2 <<< "$now"
echo -e "$d1"
echo -e "$d2"
unset IFS
mkdir "Where most of my executable files are is given in PATH"
ls
cd Where most of my executable files are is given in PATH
cd "Where most of my executable files are is given in PATH"
cd -
cd Where\ most\ of\ my\ executable\ files\ are\ is\ given\ in\ PATH/
echo "Where most of my executable files are is given in \$PATH"
echo "Where most of my executable files are is given in $PATH"
total_1=  $(( 15 + 15 ))
total_1  =  $(( 15 + 15 ))
total_1=$(( 15 + 15 ))
total_2=$(( $total_1 + 15 ))
echo $total_1
echo $total_2
ls -1 *awk* > myfiles.list
cat myfiles.list
ls -1 *awk* > myfiles.list
ls -1 *awk* > file1.list
ls -1 *awk* > MyFolder1.list
touch myfiles.list
ls -1 *awk* > myfiles.list
cat myfiles.list
mkdir myfile.list
ls -1 *awk* > myfiles.list
cat myfiles.list
mklist myfiles.list
mk myfiles.list
ls -1
ls -1 *awk* > myfiles.list
ls -1 *awk*
echo "$myfiles"
ls -1 *awk* > myfiles.list
ls -l *awk*>myfiles.list
ls -l "awk" > myfiles.list
awkoutputfile.txt
awkoutputfile.txt > myfiles.list
cd ~/LectureExercises/Lect_05
pwd
#!/usr/bin/awk -f
BEGIN {
FS="\t";OFS="_";
awk
#!/usr/bin/awk -f
BEGIN {
FS="\t";OFS="_";
man set
bash
cd
ls -al
mkdir ~/LectureExercises/Lect_06
cd ~/LectureExercises/Lect_06
ls -al
pwd
wget --help
wget http://nematodes.org/teaching/bioinformatics/nem.fasta
ls -al*.fasta
ls -al *.fasta
less nem.fasta
grep -c">"nem.fasta
grep -c ">" nem.fasta
cat nem.fasta | awk '{
# Is this line a fasta header
if(substr($1,1,1)==">")
 {
print "this is a header line: " $0; 
hline=FNR ;
 }
# Identify the first line of the sequence
# ...and then the first character of that line
if(FNR==hline+1)
 {
print "First line is:" $0;
first_seq_character=substr($0,1,1)
print "First character is: " first_seq_character
print first_seq_character > "first_seq_character.txt" 
 }
}'
wc -l first_seq_character.txt
sort first_seq_character.txt | uniq -c | sort -k1,1nr
makeblastdb
makeblastdb -in nem.fasta -dbtype prot -out nem
ls -lh
nano testsequence.fasta
wget -O testsequence.fasta "https://eutils.ncbi.nlm.nih.gov/entrez/eutils/efetch.fcgi?db=nuccore&id=NC_015119.1&strand=1&seq_start=1426&seq_stop=2962&rettype=fasta&retmode="
ls -al
blastx -db nem -query testsequence.fasta >blastoutput1.out
more blastoutput1.out
blastx -db  nem   -query testsequence.fasta    -outfmt 7 > blastoutput2.out
headblastoutput2.out
head blastoutput2.out
wc -l blastoutput*
git init
git add *
git st
git commit -m "BLASTDB stuff added"
curl -u mypersonalGitHub_username https://api.github.com/user/repos -d '{"name":"Lect06_exercises"}'
curl -u mypersonalGitHub_username https:                                                                          //api.github.com/user/repos -d '{"name":"Lect06_exercises"}'
curl -u B203110-2021 https:                                                                          //api.github.com/user/repos -d '{"B203110-2021":"Lect06_exercises"}'
curl -u mypersonalGitHub_username https://api.github.com/user/repos -d '{"B203110-2021":"Lect06_exercises"}'
curl -u B203110-2021 https://api.github.com/user/repos -d '{"B203110-2021":"Lect06_exercises"}'
curl -u mypersonalGitHub_B203110-2021 https://api.github.com/user/repos -d '{"B203110-2021":"Lect06_exercises"}'
cd 
cd /localdisk/home/s2258074/LectureExercises/
cd Lect_06
pwd
git init
git add*
git add *
git st
git commit -m "BLASTDB stuff added"
ls
git st
git commit -m "BLASTDB stuff added"
curl -u mypersonalGitHub_B203110-2021 https://api.github.com/user/repos -d '{"B203110-2021":"Lect06_exercises"}'
curl -u mypersonalGitHub_B203110-2021 https://api.github.com/user/repos -d '{"name":"Lect06_exercises"}'
curl -u mypersonalGitHub_B203110-2021 https://api.github.com/user/repos -d '{"Lect06_exercises":"Lect06_exercises"}'
curl -u B203110-2021 https://api.github.com/user/repos -d '{"Lect06_exercises":"Lect06_exercises"}'
curl -u B203110-2021 https://api.github.com/user/repos -d '{"name":"Lect06_exercises"}'
git remote add origin https://github.com/B203110-2021/Lect06_exercises.git
git push -u origin master
head -n7blastoutput2.out
head -n7 blastoutput2.out
curl -u B203110-2021 https://api.github.com/user/repos -d '{"name":"Lect06_exercises"}'
git remote add origin https://github.com/B203110-2021/Lect06_exercises.git
git push -u origin master
git remote add origin https://github.com/B203110-2021/Lect06_exercises.git 
B203110-2021
git push -u origin master
rep -v "#"blastoutput2.out > HSP_lines_only.out
pwd
head -n3 639accs.txt
wget -o ADZ52296.fasta
  perl -MNet::FTP -e     '$ftp = new Net::FTP("ftp.ncbi.nlm.nih.gov", Passive => 1);
     $ftp->login; $ftp->binary;
     $ftp->get("/entrez/entrezdirect/edirect.tar.gz");'
  gunzip -c edirect.tar.gz | tar xf -
  rm edirect.tar.gz
  builtin exit
