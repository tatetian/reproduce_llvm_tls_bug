# The buggy support for file-scoped TLS variables in LLVM 7

This project is a minimal example that reproduces a bug in LLVM 7 regarding with file-scoped TLS variables.

## How to reproduce the bug

If you have a LLVM 7 (last updated on 14 Nov, 2018) installed on your system, then the project should fail to build with the following command
```
make clean && make
```
and report the following error message

> relocation R_X86_64_32S against tls_int can not be used when making a shared object; recompile with -fPIC`"

If you change the Makefile to compile with gcc, it should work just fine.
