# Fresh Bash one-liners
* replace all instance string in a directory
  * `grep -rl "TO REPLACE" ./ | xargs sed -i 's/TO REPLACE/WITH NEW PHRASE/g'`
  * `sed` requires perl on machine
