// Part of the Carbon Language project, under the Apache License v2.0 with LLVM
// Exceptions. See /LICENSE for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
// AUTOUPDATE

// CHECK:STDERR: fail_no_type.carbon:[[@LINE+3]]:17: Expected a `api` or `impl`.
// CHECK:STDERR: package Geometry;
// CHECK:STDERR:                 ^
package Geometry;

// CHECK:STDOUT: [
// CHECK:STDOUT:   {kind: 'PackageIntroducer', text: 'package'},
// CHECK:STDOUT:   {kind: 'Name', text: 'Geometry'},
// CHECK:STDOUT: {kind: 'PackageDirective', text: ';', has_error: yes, subtree_size: 3},
// CHECK:STDOUT: {kind: 'FileEnd', text: ''},
// CHECK:STDOUT: ]
