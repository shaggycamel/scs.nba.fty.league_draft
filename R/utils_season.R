# Season strings for the draft. The target season is read from NBA_DRAFT_SEASON
# (independent of the league dashboard's NBA_SEASON), falling back to the
# default; the stats season is derived from it. The data-raw scripts source this
# file directly (see data-raw/_generate_all.R).
draft_season <- function() {
  season <- Sys.getenv("NBA_DRAFT_SEASON")
  if (nzchar(season)) season else "2026-27"
}

season_before <- function(season = draft_season()) {
  str_replace_all(season, "\\d+", \(x) as.character(as.integer(x) - 1))
}
