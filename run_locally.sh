
micromamba deactivate 
micromamba activate rosic-site

PORT="4001"
URL="http://localhost:$PORT/"

# Check if the port is already in use and kill the process using it
if lsof -i:$PORT -t >/dev/null 2>&1; then
    echo "Port $PORT is in use. Killing the process using it..."
    kill -9 $(lsof -i:$PORT -t)
    echo "Process on port $PORT has been terminated."
else
    echo "Port $PORT is not in use."
fi

jekyll serve --port $PORT &

sleep 3 

xdg-open $URL &

