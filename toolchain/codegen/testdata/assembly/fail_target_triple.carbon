// Part of the Carbon Language project, under the Apache License v2.0 with LLVM
// Exceptions. See /LICENSE for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
// ARGS: dump assembly --target_triple=x86_687-unknown-linux-gnu %s
// No autoupdate because the message comes from LLVM.
// NOAUTOUPDATE
// CHECK:STDERR: ERROR: Invalid -target_triple:{{.*}}

fn Main() -> i32 { return 0; }
