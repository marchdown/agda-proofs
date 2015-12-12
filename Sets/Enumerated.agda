module Sets.Enumerated where
  data Bool : Set where
    true  : Bool
    false : Bool

-- for some reason the following syntax does not work:
-- data Bool : Set where true, false : Bool
