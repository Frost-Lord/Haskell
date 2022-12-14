-- Import the necessary modules
import System.Random

-- Define a list of quotes to choose from
quotes :: [String]
quotes = [
    "The only true wisdom is in knowing you know nothing. - Socrates",
    "The only way to do great work is to love what you do. - Steve Jobs",
    "Believe you can and you're halfway there. - Theodore Roosevelt",
    "To be yourself in a world that is constantly trying to make you something else is the greatest accomplishment. - Ralph Waldo Emerson",
    "The only way to do great work is to love what you do. If you haven't found it yet, keep looking. - Steve Jobs"
  ]

-- Define a function that chooses a random quote from the list
chooseQuote :: IO String
chooseQuote = do
    i <- randomRIO (0, length quotes - 1)
    return i



-- Define the main function
main :: IO ()
main = do
    quote <- chooseQuote
    putStrLn (quotes !! quote)
