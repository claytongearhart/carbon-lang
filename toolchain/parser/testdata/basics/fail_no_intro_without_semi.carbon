// Part of the Carbon Language project, under the Apache License v2.0 with LLVM
// Exceptions. See /LICENSE for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
// AUTOUPDATE

// CHECK:STDERR: fail_no_intro_without_semi.carbon:[[@LINE+3]]:1: Unrecognized declaration introducer.
// CHECK:STDERR: foo bar baz
// CHECK:STDERR: ^
foo bar baz

// CHECK:STDOUT: [
// CHECK:STDOUT: {kind: 'EmptyDeclaration', text: 'foo', has_error: yes},
// CHECK:STDOUT: {kind: 'FileEnd', text: ''},
// CHECK:STDOUT: ]
