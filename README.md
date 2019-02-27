# dbrs-project
1. Download entire project to a clean directory. All Docker and notebook files will be 
run from this location.
2. In a Docker terminal, start building the image. (~30 minutes)
```
$ docker-compose up
```
3. If you have an app token for NYC OpenData, write it to a file in the same directory. 
The first notebook will read in this file if it exists.
```
$ echo "X-App-Token,APPLICATION_TOKEN" > api_nycOpenData.csv
```
4. Open **data_ingest_and_clean.ipynb** and run all cells.
5. Open **311_data_explore.ipynb** and run all cells.

And if that all somehow fails, feel free to open the notebook snapshots in Github's viewer. 
These notebooks have an additional city map plotting that won't run in the container.


