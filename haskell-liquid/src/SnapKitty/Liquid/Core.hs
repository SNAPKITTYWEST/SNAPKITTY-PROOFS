{- Copyright © 2026 SnapKitty Collective LLC. All rights reserved.
   Licensed under Business Source License 2.0 (BSL-2.0).
   Change Date: December 31, 2027 — after which, licensed under AGPL-3.0-only.
   See LICENSE for complete terms.
-}

{-# LANGUAGE GADTs #-}

module SnapKitty.Liquid.Core where

type Proof = ()

{-@ type Nat = {v:Int | 0 <= v} @-}
{-@ type Pos = {v:Int | 0 < v} @-}
{-@ type U16 = {v:Int | 0 <= v && v <= 65535} @-}
{-@ type Prob = {v:Int | 0 <= v && v <= 1000000} @-}

data Pass = Pass | Fail
  deriving (Eq, Show)

{-@ reflect isPass @-}
isPass :: Pass -> Bool
isPass Pass = True
isPass Fail = False
