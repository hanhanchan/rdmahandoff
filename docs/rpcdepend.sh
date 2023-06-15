#Initialize submodules one by one to avoid slow network speed.
# Perform the following operations on the upper level of the third-party directory:
#git clone cause empty directory，use : git submodule add url path
# rm -r abseil-cpp \
# rm -r benchmark \
rm -r benchmark \
rm -r bloaty \
rm -r boringssl-with-bazel \
rm -r cares \
rm -r envoy-api \
rm -r googleapis \
rm -r googletest \
rm -r libuv \
rm -r opencensus-proto \
rm -r opentelemetry \
rm -r protobuf \
rm -r protoc-gen-validate \
rm -r re2 \
rm -r xds \
rm -r zlib \
git submodule add https://kgithub.com/abseil/abseil-cpp.git third_party/abseil-cpp
git submodule add https://kgithub.com/google/benchmark  third_party/benchmark
git submodule add https://kgithub.com/google/bloaty.git third_party/bloaty
git submodule add https://kgithub.com/google/boringssl.git third_party/boringssl-with-bazel
git submodule add https://kgithub.com/c-ares/c-ares.git third_party/cares
git submodule add https://kgithub.com/envoyproxy/data-plane-api.git  third_party/envoy-api
git submodule add https://kgithub.com/googleapis/googleapis.git   third_party/googleapis
git submodule add https://kgithub.com/google/googletest.git third_party/googletest
git submodule add https://kgithub.com/libuv/libuv.git third_party/libuv   
git submodule add https://kgithub.com/census-instrumentation/opencensus-proto.git third_party/opencensus-proto
git submodule add https://kgithub.com/open-telemetry/opentelemetry-proto.git third_party/opentelemetry third_party/opentelemetry
git submodule add https://kgithub.com/protocolbuffers/protobuf.git third_party/protobuf third_party/protobuf
git submodule add https://kgithub.com/envoyproxy/protoc-gen-validate.git third_party/protoc-gen-validate
git submodule add https://kgithub.com/google/re2.git third_party/re2  third_party/re2
git submodule add https://kgithub.com/cncf/xds.git third_party/xds
git submodule add https://kgithub.com/madler/zlib third_party/zlib
