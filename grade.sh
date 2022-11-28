# Create your grading script here


CPATH=".:lib/junit-4.13.2.jar:lib/hamcrest-core-1.3.jar"
#SCORE= 0
rm -rf student-submission
rm ListExamples.java
git clone $1 student-submission

cd student-submission
cp ListExamples.java ../
cd ..
if [ -e ListExamples.java ]
then
echo "File found"

else
echo "Wrong file or file missing."

fi
javac -cp .:lib/hamcrest-core-1.3.jar:lib/junit-4.13.2.jar *.java 
java -cp .:lib/junit-4.13.2.jar:lib/hamcrest-core-1.3.jar org.junit.runner.JUnitCore TestListExamples > testout.txt

cat testout.txt