// Part of the Carbon Language project, under the Apache License v2.0 with LLVM
// Exceptions. See /LICENSE for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
// AUTOUPDATE
// CHECK:STDOUT: [

2.5
// CHECK:STDOUT: { index: 0, kind: 'RealLiteral', line: {{ *}}[[@LINE-1]], column:  1, indent: 1, spelling: '2.5', value: `25*10^-1`, has_trailing_space: true },

// CHECK:STDOUT: { index: 1, kind:   'EndOfFile', line: {{ *}}[[@LINE+1]], column: {{ *\d+}}, indent: 1, spelling: '' },
// CHECK:STDOUT: ]
