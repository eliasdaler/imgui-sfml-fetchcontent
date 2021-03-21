(WIP) CMake FetchContent example
==========================

This is WIP example of using CMake FetchContent in real world scenario. It
downloads ImGui, SFML and ImGui-SFML and then a simple application uses these
dependencies for building.

This example is interesting, because ImGui-SFML depends on both ImGui and SFML,
so you can also see how fetched dependencies can work with each other is well.

Building is simple, just do:

```sh
mkdir build
cd build
cmake <path-to-cloned-repo>
cmake --build .
./src/imgui-sfml-example # or .\src\Debug\imgui-sfml-example.exe if you're on Windows
```

Options
-------

You can also set the following options when building:

* `USE_SYSTEM_DEPS` (`OFF` by default) - search for SFML installed on system instead of fetching it
* `LINK_DEPS_STATIC` (`ON` by default) - link dependencies statically

Depencies
---

CMake >= 3.12

Also, if you're on Linux, you'll need to install dependencies for building SFML
specified
[here](https://www.sfml-dev.org/tutorials/2.5/compile-with-cmake.php#installing-dependencies).
