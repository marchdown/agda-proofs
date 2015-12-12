Peano representation:
0     zero
1     suc zero
2     suc (suc zero)
3     suc (suc (suc zero))


-- I would use Nat here, but I don't know how.
-- It's a Kind, which is a higher order type, but different from a class
-- ... what does that entail and how do I use it?

-- which of the lower-level types (or typeclases?) could I use?
-- Integral -- my numbers are members of the class Integral,
-- which means that they can be added and multiplied, and
-- there's integral division and such
-- but ... but what?
-- how is that different from Integer?
> class NaturalNumberFormalization e where
>   encodeNum :: Nat -> NaturalNumberFormalization e
>   decodeNum :: NaturalNumberFormalization e -> Nat

> data PeanoNumeral = zero | suc PeanoNumeral
> readNum


I think I won't do this right now, but Section 6.4 of the Haskell Report seems as good place to start as any.
