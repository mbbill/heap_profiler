GCC=gcc

all: heapdump hook_so

heapdump:
	$(GCC) heap_dump.c -o heap_dump

hook_so:
	$(GCC) -fPIC -shared -o heap_profiler.so heap_profiler_hooks_android.c heap_profiler.c -D_GNU_SOURCE -ldl

clean:
	rm heap_dump heap_profiler.so
