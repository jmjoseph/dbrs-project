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
4. Open Jupyter Notebook in a browser using the URL provided by Docker. Use
`docker-machine env` to get your default IP if needed.
5. Open **data_ingest_and_clean.ipynb** and run all cells.
6. Open **311_data_explore.ipynb** and run all cells. Cells with matplotlib output
may need to be rerun afterwards.

And if that all somehow fails, feel free to open the notebook snapshots in GitHub's viewer. 
