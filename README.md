Distance sampling workshop data
===============================


Datasets used in the distance sampling workshops at CREEM, University of St Andrews.

This repo is for conversion of the "raw" data (Distance for Windows project files?) into `RData` files.


# Workflow

1. Raw Distance for Windows project files and data (`.dst` and `.dat`) or CSVs, textfiles etc are deposited in their own folder `inst/originals/`.
2. Entry in `ACKNOWLEDGEMENTS` stating provenance of the data and whether it can be distributed online or just during the workshop.
3. Script to convert to `R` in `inst/conversion_scripts/`. Ideally adding to the standard system in `inst/conversion_scripts/make_most.R` if possible. The script will save data in flatfile format to `data/` as a data.frame with a reasonable object name and an additional unit conversion table with the same name, with "`_units`" appended.
4. Documentation for the data (in Roxygen format) deposited in a `.R` file in `R/`, this needs to include the info entered in `ACKNOWLEDGEMENTS`. This will generate documentation entries in `man/`

See `TODO.md` for current todo list.

# Output format

