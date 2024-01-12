-- \| Fibonacci Series Calculator
--
-- The Fibonacci Series Calculator is a Haskell program that
-- calculates and prints the Fibonacci Series up to the nth term with
-- arbitrary precision. It includes features such as error handling
-- for input validation, handling special cases where numbers don't
-- end in "th" (e.g. 1, 2, 3), displaying the sum of the series, and
-- providing the current date and time.
--
-- License: This program is in the public domain.

module Main (main) where

import Control.Concurrent (ThreadId, killThread, myThreadId)
import Data.Char (isSpace)
import Data.List (intercalate)
import Data.Time (defaultTimeLocale, formatTime, getCurrentTime)
import GHC.IO.Handle (hDuplicateTo)
import System.Exit (exitSuccess)
import System.IO (IOMode (AppendMode), hFlush, isEOF, stderr, stdout, withFile)
import System.Info (os)
import System.Posix.Signals (Handler (Catch), installHandler, keyboardSignal)

main :: IO ()
main = do
  tid <- myThreadId
  putStrLn "============Fibonacci Series Calculator============"
  putStrLn "This Program is Written Using: Haskell"

  _ <- installHandler keyboardSignal (Catch (interruptHandler tid)) Nothing
  dateAndTime
  getUserInput

  putStrLn "==================================================="

-- | Function to get user input
getUserInput :: IO ()
getUserInput = do
  putStr "Enter the value of n (an integer): "
  hFlush stdout
  eof <- isEOF
  if eof
    then eofHandler
    else do
      input <- getLine
      if all isSpace input
        then do
          putStrLn "Please enter something..."
          getUserInput
        else
          if trim input == "exit"
            then putStrLn "Exiting the program..."
            else case validateInput (trim input) of
              Just n | n > 0 -> do
                fibonacci n
              _ -> do
                putStrLn "Please enter a valid positive integer."
                getUserInput

-- | Calculates and prints the Fibonacci Series up to the nth term.
fibonacci :: Integer -> IO ()
fibonacci n = do
  putStrLn $ "Fibonacci Series up to the " ++ getSuffix n ++ " term: "

  if n <= 5000
    then do
      let series = fibAR (n + 1) 0 1

      putStrLn $ intercalate ", " (map show series)
      putStrLn ""
      putStrLn $ "Sum of the Fibonacci Series: " ++ show (sum series)
    else do
      -- Print the series without using array
      fib (n + 1) 0 1 0
  where
    fibAR :: Integer -> Integer -> Integer -> [Integer]
    fibAR 0 _ _ = []
    fibAR m a b = a : fibAR (m - 1) b (a + b)

    fib :: Integer -> Integer -> Integer -> Integer -> IO ()
    fib 0 _ _ sumVal = do
      putStrLn ""
      putStrLn $ "Sum of the Fibonacci Series: " ++ show sumVal
    fib m a b sumVal = do
      putStr $ show a ++ if m > 1 then ", " else "\n"
      fib (m - 1) b (a + b) (sumVal + a)

-- | Handle special cases where numbers don't end in "th"
getSuffix :: Integer -> String
getSuffix n
  | n `mod` 10 == 1 && n `mod` 100 /= 11 = show n ++ "st"
  | n `mod` 10 == 2 && n `mod` 100 /= 12 = show n ++ "nd"
  | n `mod` 10 == 3 && n `mod` 100 /= 13 = show n ++ "rd"
  | otherwise = show n ++ "th"

-- | Display the current date and time
dateAndTime :: IO ()
dateAndTime = do
  currentDate <- getCurrentTime

  let layout = "%B %e, %Y - %T"
  let formattedDate = formatTime defaultTimeLocale layout currentDate

  putStrLn $ "Date and Time: " ++ formattedDate

-- | Functions to handle user input and errors
validateInput :: String -> Maybe Integer
validateInput input =
  case reads input of
    [(n, "")] | n > 0 -> Just n
    _ -> Nothing

trim :: String -> String
trim = dropWhile isSpace . reverse . dropWhile isSpace . reverse

eofHandler :: IO ()
eofHandler = do
  putStrLn ""
  putStrLn "End of File encountered.. Stopping..."
  putStrLn "==================================================="
  exitSuccess

osIsWindows :: Bool
osIsWindows = os == "mingw32"

interruptHandler :: ThreadId -> IO ()
interruptHandler tid = do
  let nullDevice = if osIsWindows then "NUL" else "/dev/null"
  _ <- withFile nullDevice AppendMode $ \nullFile -> do
    hDuplicateTo nullFile stderr
  putStrLn ""
  putStrLn "Interrupt Recieved.. Stopping..."
  putStrLn "==================================================="
  killThread tid
