# heap_profiler
A lightweight heap profiler for Android

# Usage:
 * ndk-build
 * upload .so to phone or add to your ndk project
 * use LD_PRELOAD or manually hook the allocate/free calls.
 * use the binary built with ndk-build to retrive profile results.
 * use pprof to convert profile result into some readable format.
 * done.
