{-
-- EPITECH PROJECT, 2023
-- glados [WSL: Ubuntu-22.04]
-- File description:
-- Spec.hs
-}

import Test.HUnit

import System.Exit (exitWith, exitSuccess, ExitCode (ExitFailure))

import CptToAst (cptToAstTestList)
import CptTests (cptTestList)

main :: IO ()
main = runTestTT ( test [
    cptToAstTestList, cptTestList
  ]) >>= (\x -> if errors x + failures x == 0
    then  exitSuccess
    else exitWith (ExitFailure 84))
