module SMType where

import Data.String
import Data.Set (Set)
import qualified Data.Set as Set
import Data.Vector
import qualified Data.Vector as Vector
import Data.Either

newtype N = N Int deriving Show

newtype Y = Y ([Char]) deriving Show
newtype Q = Q ([Char]) deriving Show

newtype Y' = Y' ([Char]) deriving Show

newtype F = F (Either Y Y') deriving Show 

newtype Yn = Yn ([Y]) deriving Show
newtype Qn = Qn ([Q]) deriving Show

newtype Word = Word ([(Either F Q)]) deriving Show 

newtype SRule = SRule (Word, Word) deriving Show
newtype SRules = SRules ([SRule]) deriving Show

newtype SM =  SM (N, Yn, Qn, SRules) deriving Show

--applySRule :: SRule -> Word -> Word
--applySRule (SRule (a:word1, b:word2)) (w:word) = 
