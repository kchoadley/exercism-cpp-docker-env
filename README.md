# Exercism CPP Build and Test Environment Configuration

See Docker-setup folder to modify base image. By having the base image already built, it doens't have to be rebuilt each time you run the tests.

Be sure to update the "DIR" arg on line 5 of the Dockerfile to be the same as the example name. In this case, it is `hello-world`.

```
docker build --rm -f "Dockerfile" -t exercism-cpp-hello-world:test-1 .
```

Output should display if the tests were successful or not.
```
Running 1 test case...

*** No errors detected
[100%] Built target hello-world
```
or
```
Running 1 test case...
/usr/src/hello-world/hello_world_test.cpp(7): fatal error: in "test_hello": critical check "Hello, World!" == hello_world::hello() has failed [Hello, World! != no]

*** 1 failure is detected in the test module "Master Test Suite"
CMakeFiles/hello-world.dir/build.make:123: recipe for target 'hello-world' failed
make[2]: *** [hello-world] Error 201
make[2]: *** Deleting file 'hello-world'
CMakeFiles/Makefile2:67: recipe for target 'CMakeFiles/hello-world.dir/all' failed
make[1]: *** [CMakeFiles/hello-world.dir/all] Error 2
Makefile:83: recipe for target 'all' failed
make: *** [all] Error 2
```