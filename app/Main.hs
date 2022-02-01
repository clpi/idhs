module Main where

import Data.Array
import Data.Array.MArray
import Control.Monad.ST
import Control.Monad (foldM)
import Data.Set as System.CPUTime

-- djikstra :: (Ix v, Num w, Ord w, Bounded w) => v -> v -> Array v [(v, w)] -> (Array v w, Array v v)
-- djikstra src inv_index adj_list = Nothing
	-- min_dist <- newSTArray b maxBound
	-- writeArray min_dist src 0
	-- prev <- newSTArray b inv_index
	-- let aux vertex_queue = 
		-- case S.minView vertex_queue of
		--   Just ((dist, u), vertex_queue') ->
		--   	let edges = adj_list ! u 
		-- 	    f vertex_queue (v, weight) = do 
		-- 		  let dist_thru_u = dist + weight 
		-- 		  old_dist <- readArray min_dist v 
		-- 		  if dist_thru_u >= old_dist then 
		-- 			return vertex_queue 
		-- 		  else do 
		-- 			let vertex queue' = S.delete (old_dist, v) vertex_queue
		-- 			writeArray min_dist v dist_thru_u
		-- 			writeArray prev v u
		-- 			return $ S.insert (dist_thru_u, v) vertex_queue'
		  -- Nothing -> return ()
	-- aux (S.singleton (0, src))
	

data Expres =
    Num Int 
    | Add Expres Expres
    | Sub Expres Expres
    deriving (Show)



main :: IO ()
main = do
    print ""
