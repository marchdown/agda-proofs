module First where

data Bool : Set where
  true  : Bool
  false : Bool

data Answer : Set where
  yes : Answer
  no : Answer
  maybe : Answer

data Quarter : Set
  where east : Quarter
        west : Quarter
        north : Quarter
        south : Quarter
        
-- I've done the exercises, but I don't yet have a way to check them
-- or use the definitions in any way.

data Bool' : Set where
  true' : Bool'
  false' : Bool'

-- they are not the same set, because they have different names and different conctructors.
-- they are isomorphic, but there's probably no way to establish this isomorphism automatically.
-- none of them are "real Bools", but other code is likely to refer to true, false, and Bool by name, making it effectively "real by consensus".

-- oh, right, that's pretty much what's written in the tutorial.

-- I wonder what they mean by different interpretations of the same definition.

data ⊥ : Set where -- nope.

data ⊤ : Set where
  tt : ⊤ -- one constructor? what for?
  

-- types are not sets. okay. I wonder how Type axioms would differ were I to write them out
-- TODO

data Quarter' : Set  -- so this is a valid declaration, uh, definition.
  where east west north south : Quarter'

----------------------------------------------------------------
-- recursive sets
--
-- FIXME: can't import what's not being exported

