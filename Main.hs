{-# LANGUAGE LambdaCase #-}
    
module Main (main) where


main :: IO ()
main = putStrLn $ greet "world"

greet :: String -> String
greet x = (++) "Hello " x

foo :: Int -> Int -> Int
foo a b = (\x -> succ x) a + b

multiline :: String -> IO String
multiline str =
    putStrLn
        str

redundantParen :: Int -> Int
redundantParen x = (succ) $ x - 1

redundantDo :: IO ()
redundantDo = do putStrLn "Hello"

redundantDollar :: IO ()
redundantDollar = putStrLn $ "<- What is this dollar about?"

fmapWarn :: (String -> String) -> IO String
fmapWarn f = fmap f $ foo bar
