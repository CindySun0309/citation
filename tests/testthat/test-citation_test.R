api_cindy <- readLines("api_example.txt")

test_that("the APA function creates a character string", {
  expect_equal(is.character(APA("Homeostasis, stress, trauma, and adaptation: A neurodevelopmental view of childhood trauma", api_cindy)),
              TRUE)
})

test_that("the APA function creates an APA citation", {
  expect_equal(APA("Homeostasis, stress, trauma, and adaptation: A neurodevelopmental view of childhood trauma", api_cindy),
               "Perry, B. D., & Pollard, R. (1998). Homeostasis, stress, trauma, and adaptation: A neurodevelopmental view of childhood trauma. Child and Adolescent Psychiatric Clinics, 7(1), 33-51.")
})
