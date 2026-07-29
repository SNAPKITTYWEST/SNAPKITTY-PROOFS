-- Copyright © 2026 SnapKitty Collective LLC. All rights reserved.
-- Licensed under Business Source License 2.0 (BSL-2.0).
-- Change Date: December 31, 2027 — after which, licensed under AGPL-3.0-only.
-- See LICENSE for complete terms.

import Lake
open Lake DSL

package «lean4-policy-kernel» where
  name := "Lean4PolicyKernel"

lean_lib «Lean4PolicyKernel» where
  roots := #[`Lean4PolicyKernel]
