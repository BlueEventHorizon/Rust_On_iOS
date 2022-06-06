#!/bin/sh

cbindgen src/lib.rs -l c > LibRust.h
cargo lipo --release

cp ./target/universal/release/librust.a ../ios/RusrGreeting/RusrGreeting/LibRust/
cp ./LibRust.h ../ios/RusrGreeting/RusrGreeting/LibRust/