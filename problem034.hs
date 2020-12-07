#! /usr/bin/env runghc

-- Copyright (C) 2020 Quentin M. Kniep <hello@quentinkniep.com>
-- Distributed under terms of the MIT license.

-- TODO: why is the upper bound reasonable?

main = putStrLn (show (sum factorions))
factorions = [n | n <- [3..99999], isFactorion n]
isFactorion n = n == (sfd n)
sfd n
  | n < 10 = fact n
  | otherwise = (fact (mod n 10)) + (sfd (div n 10))
fact n
  | n < 2 = 1
  | otherwise = n * fact (n-1)
