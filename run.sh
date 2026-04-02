echo "___________________________________"
echo "|*-*-**SELECT YOUR OPTION**-*-*-* |"
 echo "|________________________________|"
echo "/______  1.EXECUTE FILE __________|"
echo "|______  2.DELETE FILE  __________|"
echo "/_________________________________|"
echo "___________________________________"
echo "|                                 |"
echo "|enter your option:               |"
echo "___________________________________"
read option

#logic start

if (($option == 1))
then
echo "|enter language:                   |"
read language

#java language

viewfiles=$(ls) #command for viewing files
echo $viewfiles

if (($language == "java"))
then
echo "|enter no. of files:               |"
read nofiles
for ((i=1;i<=$nofiles;i++))
do
echo $viewfiles
echo "|enter filename (e.g. filename):   |"
read javafile
classjavafile=$(javac $javafile.java)
echo $classjavafile
echo "|$javafile.class generated         |"
echo "------------------------------------"
echo "|now execute file !                |"
exejfile=$(java $javafile.java)
echo $exejfile
echo "___________________________________"
echo "|                                 |"
echo "|  *** THANK YOU ! ***            |"
echo "|_________________________________|"
done
fi
fi