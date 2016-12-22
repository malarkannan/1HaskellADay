module Data.SAIPE.USStates where

-- autogenerated from Data.SymbolTable.Compiler.compile

import Data.Array
import Data.Map (Map)
import qualified Data.Map as Map
import Data.Maybe (fromMaybe)

data USState = S0 | S1 | S2 | S3 | S4 | S5 | S6 | S7 | S8 | S9 | S10 | S11
             | S12 | S13 | S14 | S15 | S16 | S17 | S18 | S19 | S20 | S21
             | S22 | S23 | S24 | S25 | S26 | S27 | S28 | S29 | S30 | S31
             | S32 | S33 | S34 | S35 | S36 | S37 | S38 | S39 | S40 | S41
             | S42 | S43 | S44 | S45 | S46 | S47 | S48 | S49 | S50
   deriving (Eq, Ord, Enum, Bounded, Ix)

instance Show USState where
   show = (showSym !)

showSym :: Array USState String
showSym = array (S0,S50) [
    (S0,"Alabama") , (S1,"Alaska") , (S2,"Arizona") , (S3,"Arkansas")
    , (S4,"California") , (S5,"Colorado") , (S6,"Connecticut")
    , (S7,"Delaware") , (S8,"District of Columbia") , (S9,"Florida")
    , (S10,"Georgia") , (S11,"Hawaii") , (S12,"Idaho") , (S13,"Illinois")
    , (S14,"Indiana") , (S15,"Iowa") , (S16,"Kansas") , (S17,"Kentucky")
    , (S18,"Louisiana") , (S19,"Maine") , (S20,"Maryland")
    , (S21,"Massachusetts") , (S22,"Michigan") , (S23,"Minnesota")
    , (S24,"Mississippi") , (S25,"Missouri") , (S26,"Montana")
    , (S27,"Nebraska") , (S28,"Nevada") , (S29,"New Hampshire")
    , (S30,"New Jersey") , (S31,"New Mexico") , (S32,"New York")
    , (S33,"North Carolina") , (S34,"North Dakota") , (S35,"Ohio")
    , (S36,"Oklahoma") , (S37,"Oregon") , (S38,"Pennsylvania")
    , (S39,"Rhode Island") , (S40,"South Carolina") , (S41,"South Dakota")
    , (S42,"Tennessee") , (S43,"Texas") , (S44,"Utah") , (S45,"Vermont")
    , (S46,"Virginia") , (S47,"Washington") , (S48,"West Virginia")
    , (S49,"Wisconsin") , (S50,"Wyoming")
   ]

instance Read USState where
   readsPrec _ a = [(convert a, "")]

convert :: String -> USState
convert sym =
   fromMaybe (error ("Could not convert symbol " ++ sym))
             (Map.lookup sym convmap)

convmap :: Map String USState
convmap = Map.fromList [
    ("Alabama",S0) , ("Alaska",S1) , ("Arizona",S2) , ("Arkansas",S3)
    , ("California",S4) , ("Colorado",S5) , ("Connecticut",S6)
    , ("Delaware",S7) , ("District of Columbia",S8) , ("Florida",S9)
    , ("Georgia",S10) , ("Hawaii",S11) , ("Idaho",S12) , ("Illinois",S13)
    , ("Indiana",S14) , ("Iowa",S15) , ("Kansas",S16) , ("Kentucky",S17)
    , ("Louisiana",S18) , ("Maine",S19) , ("Maryland",S20)
    , ("Massachusetts",S21) , ("Michigan",S22) , ("Minnesota",S23)
    , ("Mississippi",S24) , ("Missouri",S25) , ("Montana",S26)
    , ("Nebraska",S27) , ("Nevada",S28) , ("New Hampshire",S29)
    , ("New Jersey",S30) , ("New Mexico",S31) , ("New York",S32)
    , ("North Carolina",S33) , ("North Dakota",S34) , ("Ohio",S35)
    , ("Oklahoma",S36) , ("Oregon",S37) , ("Pennsylvania",S38)
    , ("Rhode Island",S39) , ("South Carolina",S40) , ("South Dakota",S41)
    , ("Tennessee",S42) , ("Texas",S43) , ("Utah",S44) , ("Vermont",S45)
    , ("Virginia",S46) , ("Washington",S47) , ("West Virginia",S48)
    , ("Wisconsin",S49) , ("Wyoming",S50)
   ]