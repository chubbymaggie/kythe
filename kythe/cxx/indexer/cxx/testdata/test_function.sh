#!/bin/bash

# Copyright 2015 Google Inc. All rights reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

. "${TEST_SRCDIR}/kythe/cxx/indexer/cxx/testdata/one_case.sh"

BASE_DIR="$TEST_SRCDIR/kythe/cxx/indexer/cxx/testdata/function"

one_case "${BASE_DIR}/function_args_decl.cc" "c++1y"
one_case "${BASE_DIR}/function_args_defn.cc" "c++1y"
one_case "${BASE_DIR}/function_auto_return.cc" "c++1y"
one_case "${BASE_DIR}/function_decl.cc" "c++1y"
one_case "${BASE_DIR}/function_decl_completes.cc" "c++1y"
one_case "${BASE_DIR}/function_defn_call.cc" "c++1y"
one_case "${BASE_DIR}/function_defn.cc" "c++1y"
one_case "${BASE_DIR}/function_direct_call.cc" "c++1y"
one_case "${BASE_DIR}/function_knr_ty.c" "c99"
one_case "${BASE_DIR}/function_lambda.cc" "c++1y" --ignore_dups=true
one_case "${BASE_DIR}/function_operator_overload_dup_names.cc" "c++1y"
one_case "${BASE_DIR}/function_operator_overload_enable_if.cc" "c++1y"
one_case "${BASE_DIR}/function_operator_overload_names.cc" "c++1y" --ignore_dups=true
one_case "${BASE_DIR}/function_operator_parens_call.cc" "c++1y" --ignore_dups=true
one_case "${BASE_DIR}/function_operator_parens.cc" "c++1y"
one_case "${BASE_DIR}/function_operator_parens_overload_call.cc" "c++1y" --ignore_dups=true
one_case "${BASE_DIR}/function_operator_parens_overload.cc" "c++1y"
one_case "${BASE_DIR}/function_overload_call.cc" "c++1y"
one_case "${BASE_DIR}/function_overload.cc" "c++1y"
one_case "${BASE_DIR}/function_ptr_ty.cc" "c++1y"
one_case "${BASE_DIR}/function_ty.cc" "c++1y"
one_case "${BASE_DIR}/function_vararg.cc" "c++1y"
one_case "${BASE_DIR}/function_vararg_ty.cc" "c++1y"

exit ${HAD_ERRORS}