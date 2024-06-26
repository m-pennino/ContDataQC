% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fun.ParseID.R
\name{fun.ParseID}
\alias{fun.ParseID}
\title{Parse ID string}
\usage{
fun.ParseID(
  fun.myFileName.In,
  fun.myFileName.Out,
  fun.ColName.ID,
  fun.Delim = NA
)
}
\arguments{
\item{fun.myFileName.In}{Input file name (with directory).}

\item{fun.myFileName.Out}{Output file name (with directory).}

\item{fun.ColName.ID}{Column name for SiteID to be parsed.}

\item{fun.Delim}{ID string delimiter.  Default = NA
(Default can be modified in config file; ContData.env$myDelim_LakeID)}
}
\value{
Returns a csv file to specified finelname with the full site ID
properly parsed into new columns.
}
\description{
This function will parse an ID string into SiteID, ID_Depth
, and ID_DepthUnits.
}
\details{
Designed for use with depth profile data where the depth and
, optionally, units are incorporated into the SiteID.

Based on the default delimiter specified in the config file
(ContData.env$myDelim_LakeID) the given ID is separated into 3 parts.
The original SiteID is retained as ID_Full
}
\examples{
\dontrun{
# Parse ID string and save
dir_files <- file.path("./Data3_Aggregated")
setwd(dir_files)

fun.myFileName.In <-
                   "DATA_QC_Ellis--1.0m_Water_20180524_20180918_Append_2.csv"
fun.myFileName.Out <- "Ellis_FixedID.csv"
fun.ColName.ID <- "SiteID"
fun.Delim <- "--"

fun.ParseID(fun.myFileName.In
            , fun.myFileName.Out
            , fun.ColName.ID
            , fun.Delim)
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Example code to Plot data
library(ggplot2)

# Read file
df_Ellis <- read.csv(file.path(system.file("extdata", package="ContDataQC")
                     , "Ellis.csv"))
df_Ellis[, "Date.Time"] <- as.POSIXct(df_Ellis[, "Date.Time"])

# Plot, Create
p <- ggplot(df_Ellis, aes(x=Date.Time, y=Water.Temp.C, group=ID_Depth)) +
  geom_point(aes(color = ID_Depth)) +
  scale_color_continuous(trans = "reverse") +
  scale_x_datetime(date_labels = "\%Y-\%m")

# Plot, Show
print(p)
}
}
