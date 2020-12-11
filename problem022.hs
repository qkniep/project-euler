#! /usr/bin/env runghc

-- Copyright (C) 2020 Quentin M. Kniep <hello@quentinkniep.com>
-- Distributed under terms of the MIT license.

import Data.Char (ord)
import Data.List (sort)
import Data.List.Split (splitOn)

main = do x <- getLine
          putStrLn $ show $ scoreNames $ map dropQuotes (splitOn "," x)
dropQuotes s = drop 1 . take (length s - 1) $ s
scoreNames :: [[Char]] -> Int
scoreNames l = sum $ [a*b | (a,b) <- (zip [1..] (map scoreName (sort l)))]
scoreName n = sum $ map (\c -> (ord c)-(ord 'A')+1) n
