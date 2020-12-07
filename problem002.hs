#! /usr/bin/env runghc

-- Copyright (C) 2020 Quentin M. Kniep <hello@quentinkniep.com>
-- Distributed under terms of the MIT license.

main = putStrLn (show (sum (filter even (takeWhile(<4000000)fib))))
fib = 1 : 1 : [a+b | (a,b) <- zip fib (tail fib)]
