module Sets.Recursive where

-- open import Sets.Enumerated using (Bool; true; false)
-- FIXME can't import. Is this supposed to be in the standard library?
data Bool : Set where true, false : Bool

-- Peano representation of ℕ:
data ℕ : Set where
  zero :     ℕ
  suc  : ℕ → ℕ


data NN : Set where
  zero' :     NN
  suc'  : NN → NN

-- NN : Set can't have a statement on top level.
-- wait. What is a statement here and what isn't?

-- When I'm trying to type-check or "deduce" the example expressions
-- all I see are some small numbers, I can't even get it to fail.
-- though deduce foo → not in scope.


-- binary representation of ℕ:

data ℕ⁺ : Set where
  one      : ℕ⁺
  double   : ℕ⁺ → ℕ⁺
  double+1 : ℕ⁺ → ℕ⁺
-- I don't get these representations


data ℕ₂ : Set where
  zero :      ℕ₂
  id   : ℕ⁺ → ℕ₂

-- Exercise: Guess which representation (ℕ or ℕ₂) is better for the following tasks!

-- Computing n * 2.
-- double is better 'cause it only grows by 1 application of double

-- Computing ⌊n / 2⌋.
-- ditto


-- Deciding whether the number is odd.
-- ditto -- is the outermost token double or not?

-- Computing n + m.
-- suc is better, just shuttle the lesser number without bit registers.

-- Computing n * m.
-- ???

-- Proving that n + m = m + n for all m and n.
-- suc repr is better

-- Storing the number.
-- peano? IDK. what is "better"

-- Better is shorter. For all of these formalisms I might write encodeNum and decodeNum, and try to formally prove the existence of a canonical form for every number and all of these representations.

----------------
-- Define ℤ
-- I will be a lazy sod and write up Grothendiek's construction with a note
-- TODO this later another way or two.
-- ideas: mirror N, add predecessor constructor
data ℤ : Set where
  diff : ℕ → ℕ → ℤ -- difference of two natural numbers. non-canonical but type-checks.
  
----------------
-- trees

data BinTree : Set where
  leaf : BinTree
  node : BinTree → BinTree → BinTree -- huh? take two (leaf|tree) and return a tree?

-- what does `yields` mean? Can I construct these examples automatically?
-- ex.:
-- leaf
-- node leaf leaf
-- node (node leaf leaf) (node leaf leaf)
-- node (node (node leaf leaf) leaf) leaf

data BinTreeWithNatLeafs : Set where
  leaf : ℕ → BinTreeWithNatLeafs
  node : BinTreeWithNatLeafs → BinTreeWithNatLeafs → BinTreeWithNatLeafs

data BinTreeWithNatNodes : Set where
  leaf' : BinTreeWithNatNodes
  node' : ℕ → BinTreeWithNatNodes → BinTreeWithNatNodes → BinTreeWithNatNodes

-- node : value → leftSubTree → rightSubTree → hey look i'm a tree too!

-- I'm confused about C-cC-d: why does it sometimes fail,
-- sometimes of seemingly correct expressions return numbers
-- and sometimes the expected type?
-- e.g.: node' zero leaf' leaf' --> BinTreeWithNatNodes
-- but  node (suc zero) leaf leaf --> 36

data ListOfNats : Set where
  nil  : ListOfNats
  cons : ℕ → ListOfNats → ListOfNats
-- zero (suc (suc zero)) nil --> 39 whyy?

data NonEmptyListOfNats : Set where
  singleton    : ℕ → NonEmptyListOfNats
  extendedList : ℕ → NonEmptyListOfNats → NonEmptyListOfNats -- (value: (last value|list of values))
  
-- how to test it?  


  
