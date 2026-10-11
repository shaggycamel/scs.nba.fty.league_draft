# Season variables
cur_season <- draft_season()
prev_season <- season_before(cur_season)
# cur_date <-

# Save all to data folder
usethis::use_data(
  cur_season,
  prev_season,
  overwrite = TRUE
)
