// Part of the Carbon Language project, under the Apache License v2.0 with LLVM
// Exceptions. See /LICENSE for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
// AUTOUPDATE

fn F() {
  // CHECK:STDERR: fail_top_level_if.carbon:[[@LINE+9]]:6: Expected `(` after `if`.
  // CHECK:STDERR:   if true then 1 else 2;
  // CHECK:STDERR:      ^
  // CHECK:STDERR: fail_top_level_if.carbon:[[@LINE+6]]:11: Expected braced code block.
  // CHECK:STDERR:   if true then 1 else 2;
  // CHECK:STDERR:           ^
  // CHECK:STDERR: fail_top_level_if.carbon:[[@LINE+3]]:11: Expected expression.
  // CHECK:STDERR:   if true then 1 else 2;
  // CHECK:STDERR:           ^
  if true then 1 else 2;
}

// CHECK:STDOUT: [
// CHECK:STDOUT:     {kind: 'FunctionIntroducer', text: 'fn'},
// CHECK:STDOUT:     {kind: 'Name', text: 'F'},
// CHECK:STDOUT:       {kind: 'ParameterListStart', text: '('},
// CHECK:STDOUT:     {kind: 'ParameterList', text: ')', subtree_size: 2},
// CHECK:STDOUT:   {kind: 'FunctionDefinitionStart', text: '{', subtree_size: 5},
// CHECK:STDOUT:       {kind: 'IfConditionStart', text: 'if', has_error: yes},
// CHECK:STDOUT:       {kind: 'Literal', text: 'true'},
// CHECK:STDOUT:     {kind: 'IfCondition', text: 'if', has_error: yes, subtree_size: 3},
// CHECK:STDOUT:       {kind: 'CodeBlockStart', text: 'then', has_error: yes},
// CHECK:STDOUT:         {kind: 'InvalidParse', text: 'then', has_error: yes},
// CHECK:STDOUT:       {kind: 'ExpressionStatement', text: ';', has_error: yes, subtree_size: 2},
// CHECK:STDOUT:     {kind: 'CodeBlock', text: 'then', has_error: yes, subtree_size: 4},
// CHECK:STDOUT:   {kind: 'IfStatement', text: 'if', subtree_size: 8},
// CHECK:STDOUT: {kind: 'FunctionDefinition', text: '}', subtree_size: 14},
// CHECK:STDOUT: {kind: 'FileEnd', text: ''},
// CHECK:STDOUT: ]
