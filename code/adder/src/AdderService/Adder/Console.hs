module AdderService.Adder.Console (
    run
  ) where

import           AdderService.CoAdder.Class (mkCoAdderWithLogging)

import           Util.Pairing (pairEffect)
import           Util.Console (runConsole)

run :: IO ()
run = pairEffect (\_ r -> r) (mkCoAdderWithLogging 10 0) runConsole
