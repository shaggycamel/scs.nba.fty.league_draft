test_that("NBA_DRAFT_SEASON overrides the default", {
  withr::local_envvar(NBA_DRAFT_SEASON = "2027-28")
  expect_equal(draft_season(), "2027-28")
})

test_that("an unset NBA_DRAFT_SEASON falls back to the default", {
  withr::local_envvar(NBA_DRAFT_SEASON = NA)
  expect_equal(draft_season(), "2026-27")
})

test_that("an empty NBA_DRAFT_SEASON falls back to the default", {
  withr::local_envvar(NBA_DRAFT_SEASON = "")
  expect_equal(draft_season(), "2026-27")
})

test_that("season_before steps a season back", {
  expect_equal(season_before("2026-27"), "2025-26")
  expect_equal(season_before("2025-26"), "2024-25")
})
