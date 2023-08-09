# Create your grading script here



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
echo "Wrong file or file missing. 0/5"

fi
javac -cp .:lib/hamcrest-core-1.3.jar:lib/junit-4.13.2.jar *.java 2> err.txt 1> stdout.txt 2> stderr.txt
echo $?
cat stdout.txt
cat stderr.txt
echo "done"
if [ $? -eq 0 ]
then
echo ""
else 
echo "Could not compile correctly. 1/5"
exit
fi

java -cp .:lib/junit-4.13.2.jar:lib/hamcrest-core-1.3.jar org.junit.runner.JUnitCore TestListExamples > testout.txt
if [ $? -eq 0 ]
then
echo "Full test passed, 5/5"
else    
cat testout.txt
echo "Some tests failed, see above for details"
exit
fi