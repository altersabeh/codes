import Data.Char (isSpace)
import System.IO (hFlush, stdout)

getUserName :: IO String
getUserName = do
  putStr "Enter your name: "
  hFlush stdout

  userinput <- getLine
  let name = dropWhile isSpace userinput

  return $ reverse $ dropWhile isSpace $ reverse name

newtype Greeter = Greeter String

greet :: Greeter -> IO ()
greet (Greeter name) = do
  putStrLn $ "Hello, " ++ name ++ "!"
  putStrLn "Greetings from Haskell!"

main :: IO ()
main = do
  name <- getUserName
  let greeter = Greeter name

  greet greeter
