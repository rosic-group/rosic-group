
micromamba deactivate 
micromamba activate rosic-site

URL="http://localhost:4001/"

jekyll serve --port 4001 &

sleep 3 

xdg-open $URL &

