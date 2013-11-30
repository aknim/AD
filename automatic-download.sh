search_key=$1;
wget -O all "http://www.youtube.com/results?search_query=${search_key}&sm=3";
key2="watch?v=";key1="ux-thumb-wrap";grep $key1 all | grep $key2 > watch;
temp=`head -1 watch | awk '{print $2}'`; len=`echo ${#temp}`; echo ${temp:6:${len}-7} > actual;
uri=`cat actual`;youtube-dl "www.youtube.com${uri}" -t
#head -1 watch > 1st #Rather get all the uri(s)
#Delete the temporary files
#Extract audio
#Set Title
#Set Location
#Interactive version

#go, golang-go install, goosh, using curl Mozilla
