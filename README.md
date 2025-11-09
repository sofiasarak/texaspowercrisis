# EDS223 Homework 3: Houston Blackouts, February 2021

This repository contains the response to Homework 3 in EDS223 - *Geospatial Analysis & Remote Sensing*, completed by Sofia Sarak.

The assignment explores the effect of the winter storms of February 2021 on Houston, Texas. This is done by using remote sensing data (see data sources below) to see differences in light intensity between February 7th and February 16th; from this, areas that experienced a blackout were determined. Using geographic roads and houses data, the number of homes that experienced a blackout in Houston was also found. The last bit of the analysis included determining the census tracts that were affected, and the difference between median income in tracts that did and did not experience power outages.

For more information on the homework assignment itself (including all of the data and sources), reference the [assignment description](https://eds-223-geospatial.github.io/assignments/HW3.html).

## Data Sources

Our night light intensity data comes from the Visible Infrared Imaging Radiometer Suite (VIIRS) onboard the Suomi satellite, which can be accessed from [NASA's Level-1 and Atmospheric Archive & Distribution System Distributed Active Archive Center (LAADS DAAC)](https://ladsweb.modaps.eosdis.nasa.gov/).

Our roads data is sourced from Geofabrik (a third party company redistributing [OpenStreetMap's](https://planet.openstreetmap.org/) available geographic world data). The shapefile was retrieved from [Geofabrik’s](https://download.geofabrik.de/) download sites and the class's amazing teaching team prepared a Geopackage (.gpkg file) containing just the subset of roads that intersect the Houston metropolitan area.

Houses data was sourced in the same way as our roads data: it is OpenStreetMap data retrieved using Geofabrick.

Census tract geometries as well as income data by census tract was sourced from [U.S. Census Bureau’s American Community Survey](https://www.census.gov/programs-surveys/acs) for census tracts in 2019. The ArcGIS ["file geodatabase"](https://desktop.arcgis.com/en/arcmap/latest/manage-data/administer-file-gdbs/file-geodatabases.htm) was used for its formatting.

*Information on data sources was retrieved from original assignment description.*

## Repository Structure
```
├── data
│   ├── ACS_2019_5YR_TRACT_48_TEXAS.gdb
│   │   ├── ...
│   ├── gis_osm_buildings_a_free_1.gpkg
│   ├── gis_osm_roads_free_1.gpkg
│   └── VNP46A1
│       ├── VNP46A1.A2021038.h08v05.001.2021039064328.tif
│       ├── VNP46A1.A2021038.h08v06.001.2021039064329.tif
│       ├── VNP46A1.A2021047.h08v05.001.2021048091106.tif
│       └── VNP46A1.A2021047.h08v06.001.2021048091105.tif
├── figs
│   ├── both_plots.png
│   ├── census_blackout_plot.png
│   ├── feb16_plot.png
│   ├── feb7_plot.png
│   └── median_income_plot.png
├── houstonpower.pdf
├── houstonpower.qmd
├── median_income_plot.png
├── README.md
└── texaspowercrisis.Rproj
```
## Course Information

-   **Course Title:** [EDS 223 - Geospatial Analysis & Remote Sensing](https://eds-223-geospatial.github.io/)
-   **Term:** Fall 2025
-   **Program:** [UCSB Masters in Environmental Data Science](https://bren.ucsb.edu/masters-programs/master-environmental-data-science).

Teaching Team:

-   **Instructor:** [Annie Adams](https://github.com/annieradams)
-   **Teaching Assistant:** Alessandra Vidal Meza

Complete materials for the discussion sections and additional resources can be found on the [course website](https://eds-223-geospatial.github.io/).

*This README was adapted from the README template provided in EDS220; see course details and original repository [here](https://github.com/sofiasarak/eds220-2025-in-class).*
