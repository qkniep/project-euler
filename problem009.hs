#! /usr/bin/env runghc

-- Copyright (C) 2020 Quentin M. Kniep <hello@quentinkniep.com>
-- Distributed under terms of the MIT license.

main = putStrLn (show (head [let c=1000-a-b in a*b*c | a<-[1..998], b<-[1..998],
                             let c=1000-a-b in a*a + b*b == c*c]))
