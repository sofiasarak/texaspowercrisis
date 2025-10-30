library(stars)
library(here)
library(terra)

# Loadinstars# Loading in raster (night light) data
feb7_tile5 <- read_stars(here("data/VNP46A1/VNP46A1.A2021038.h08v05.001.2021039064328.tif"))
feb7_tile6 <- read_stars(here("data/VNP46A1/VNP46A1.A2021038.h08v06.001.2021039064329.tif"))
feb16_tile5 <- read_stars(here("data/VNP46A1/VNP46A1.A2021047.h08v05.001.2021048091106.tif"))
feb16_tile6 <- read_stars(here("data/VNP46A1/VNP46A1.A2021047.h08v06.001.2021048091105.tif"))

# Merging rasters together, by day
feb7_lights <- c(feb7_tile5, feb7_tile6, along = 1)
feb16_lights <- c(feb16_tile5, feb16_tile6, along = 1)

# Finding difference in light instensity
diff_light <-  feb7_lights - feb16_lights

# Creating reclassification matrix
rcl <- matrix(c(-Inf, 200, 1,   # group 1: drop in less than 200 nW cm^-2sr^-1 
                200, Inf,  2),  # group 2: drop in >= 200 nW cm^-2sr^-1 
              ncol = 3, byrow = TRUE)

# Using reclass matrix to reclassfiy difference raster
diff_reclass <- reclassify(diff_light, rcl = rcl)

diff_mask <- diff_light
diff_mask[diff_mask < 200] <- NA

st_bbox(diff_mask)

clip <- rast(xmin = -96.5, xmax = -94.5, ymin = 29, ymax = 30.5, # extent defined using x and y
             resolution = 0.3, # each cell will be 0.3 by 0.3 degree
             vals = 1) # placeholder value that populates each cell, since we are not using actual cell values
# because we are just looking for the shape (clip)

coords <- c(xmin = -96.5, xmax = -94.5, ymin = 29, ymax = 30.5)

# select the values that fall within smaller extent
diff_mask_clip <- diff_mask[clip, drop = FALSE]

diff_mask_bbox <- st_bbox(coords, st_crs(diff_mask))

diff_mask_clip <- st_crop(diff_mask, diff_mask_bbox)

nrow(diff_mask)

