// Part of the Carbon Language project, under the Apache License v2.0 with LLVM
// Exceptions. See /LICENSE for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
// AUTOUPDATE

// CHECK:STDERR: fail_precedence_star_minus.carbon:[[@LINE+3]]:16: Parentheses are required to disambiguate operator precedence.
// CHECK:STDERR: var n: i8 = n* -n;
// CHECK:STDERR:                ^
var n: i8 = n* -n;

// CHECK:STDOUT: [
// CHECK:STDOUT:   {kind: 'VariableIntroducer', text: 'var'},
// CHECK:STDOUT:     {kind: 'Name', text: 'n'},
// CHECK:STDOUT:     {kind: 'Literal', text: 'i8'},
// CHECK:STDOUT:   {kind: 'PatternBinding', text: ':', subtree_size: 3},
// CHECK:STDOUT:   {kind: 'VariableInitializer', text: '='},
// CHECK:STDOUT:       {kind: 'NameExpression', text: 'n'},
// CHECK:STDOUT:     {kind: 'PostfixOperator', text: '*', subtree_size: 2},
// CHECK:STDOUT:     {kind: 'NameExpression', text: 'n'},
// CHECK:STDOUT:   {kind: 'InfixOperator', text: '-', has_error: yes, subtree_size: 4},
// CHECK:STDOUT: {kind: 'VariableDeclaration', text: ';', subtree_size: 10},
// CHECK:STDOUT: {kind: 'FileEnd', text: ''},
// CHECK:STDOUT: ]
