load("//tools:build_rules/go.bzl", "go_release_binary")

package(default_visibility = ["//kythe:default_visibility"])

go_release_binary(
    name = "read_entries",
    srcs = ["read_entries.go"],
    deps = [
        "//kythe/go/platform/delimited",
        "//kythe/go/platform/vfs",
        "//kythe/go/services/graphstore",
        "//kythe/go/services/graphstore/proxy",
        "//kythe/go/storage/gsutil",
        "//kythe/go/storage/leveldb",
        "//kythe/go/util/flagutil",
        "//kythe/go/util/kytheuri",
        "//kythe/proto:storage_proto_go",
    ],
)
