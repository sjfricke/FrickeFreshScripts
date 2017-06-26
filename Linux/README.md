# Fresh Bash one-liners
* Replace all instance string in a directory
  * `grep -rl "TO_REPLACE" ./ | xargs sed -i 's/TO_REPLACE/WITH_NEW_PHRASE/g'`
  * `sed` requires perl on machine
* Print out all words in file by number of times
  * `tr -c a-zA-Z '\n' < THE_FILE | sed '/^$/d' | sort | uniq -i -c`
* Show 10 biggest memory hogs
  *  `ps aux | awk '{if ($5 != 0 ) print $2,$5,$6,$11}' | sort -k2n | tail -10`
* Show 10 largest files in path
  * `du -sk /PATH/* | sort -rn | head -10`

