module Idell.Ast (Leaf,Branch) where

import Data.Text (Text)
import Data.Char (chr)
import Data.Text.Prettyprint.Doc

data Ast a                = Leaf a | Branch (Tree a) (Tree a) 

fringe :: Ast a -> [a]

leaf = Leaf
branch = Branch
cell (Leaf a) = a
isLeaf (Leaf l) = True
isLeaf _ = False
