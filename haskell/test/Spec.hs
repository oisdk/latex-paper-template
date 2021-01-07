{-# OPTIONS_GHC -Wno-orphans #-}
{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE ScopedTypeVariables #-}

module Main where

import Example

import Test.QuickCheck
import Test.Tasty.QuickCheck
import Test.Tasty

prop_oneTwo :: Property
prop_oneTwo = example === 3

return []

main :: IO ()
main = defaultMain (testProperties "Properties" $allProperties)
