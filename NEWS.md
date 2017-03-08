NEWS-ContDataQC
================

<!-- NEWS.md is generated from NEWS.Rmd. Please edit that file -->
    #> Last Update: 2017-03-08 08:11:32

Version history.

Planned Updates
===============

-   Change WaterLevel to GageHeight. Used terminology from test files during development but Gage Height is the more proper term. 20170308.

-   Spell out "AW"" and other abbreviations (e.g., AirWater). 20170308.

-   When Air and Water measurements are at different times the plots aren't working. 20170308.

-   Gaps in data not always evident in the plots. 20170308.

v2.0.1.0001
===========

2017-03-08

-   Bug fix for missed references to new environment for variables introduced in v2.0.1. Multiple files affected. Gage data, QC, and Aggregate working but not Stats. One table in the QC and Aggregate reports has been commented out. (To be fixed later).

v2.0.1
======

2017-03-06

-   Bug fix for variable names not showing up.

-   Created environment ContData.env and assigned all variables in fun.UserDefinedValues.R file to it.

-   Renamed fun.UserDefinedValues.R to env.UserDefinedValues.R.

-   Converted all RMD and R files in package to use ContData.env$.

-   Added NEWS.md

-   Edited earlier fix to fun.QC.R for adding day, month, year to data. Did not use variable names in previous edit.

-   Create RMD files for ReadMe and NEWS. Added RMD to ignore list.

v2.0.0
======

2017-02-28

-   Released on GitHub as a fully documented package.

-   Update for TN, Modified QC report (RMD) to summarize number of samples differently.

-   Included tables in Aggregate report (RMD).

-   Reworked scripts to be run as a library.

-   Uploaded to GitHub.

v1.2.1
======

2017-01-16

-   Update for NJ, fixed date/time issue when resaving files in Excel.

-   Added date/time QC process to be run again at the aggregate step.

v1.2.0
======

2016-05-04

-   NWQMC 2016, Tampa, FL

v1.1.0
======

2016-03-31

-   AMAAB 2016, Cacapon, WV

-   Minor

v1.0.0
======

2015-10-26

-   SWPBA 2015, Myrtle Beach, SC

-   Initial public release.