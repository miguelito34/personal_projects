# NYC Uber Rides

### Overview

FiveThirtyEight is one of the few organizations to have acquired trip data from a ridesharing service like Uber.  This trip data includes the date of the trip and the pickup location, including latitudes and longitudes.  Drawing inspiration from similar projects and as someone who enjoys great data visualizations, I wanted to map these pickup locations to see what I could create.

### The Data

As I mentioned, this data is available via [FiveThirtyEight's github](https://github.com/fivethirtyeight/uber-tlc-foil-response).  The data includes Uber trips from April - September of 2014 and also trips from January - June of 2015 in and around the NYC metro area.

### The Process

Knowing that I ultimately wanted to map this data, I started off with everyone's favorite vis packages, `ggplot2` and `sf`.  After reading in the data from the source, I transformed the included latitudes and longitudes into geometry objects that `sf` would recognize and that could be properly transformed into crs projection 102003 (aka the "USA Contiguous Albers Equal Area Conic" projection).  Once properly projected, I could transform the geometries back into latitude and longitude coordinates and plot them using `ggplot()` and `sf()`.

### The Results

![NYC Metro Map](nyc-rides/Maps/nyc_metro_1M.jpeg)
Format: ![Alt Text](url)
