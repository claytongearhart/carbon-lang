// Part of the Carbon Language project, under the Apache License v2.0 with LLVM
// Exceptions. See /LICENSE for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
// AUTOUPDATE

fn foo(addr a: i32*);

// CHECK:STDOUT: [
// CHECK:STDOUT:   {kind: 'FunctionIntroducer', text: 'fn'},
// CHECK:STDOUT:   {kind: 'Name', text: 'foo'},
// CHECK:STDOUT:     {kind: 'ParameterListStart', text: '('},
// CHECK:STDOUT:         {kind: 'Name', text: 'a'},
// CHECK:STDOUT:           {kind: 'Literal', text: 'i32'},
// CHECK:STDOUT:         {kind: 'PostfixOperator', text: '*', subtree_size: 2},
// CHECK:STDOUT:       {kind: 'PatternBinding', text: ':', subtree_size: 4},
// CHECK:STDOUT:     {kind: 'Address', text: 'addr', subtree_size: 5},
// CHECK:STDOUT:   {kind: 'ParameterList', text: ')', subtree_size: 7},
// CHECK:STDOUT: {kind: 'FunctionDeclaration', text: ';', subtree_size: 10},
// CHECK:STDOUT: {kind: 'FileEnd', text: ''},
// CHECK:STDOUT: ]
