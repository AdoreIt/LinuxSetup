# Vim tips and tricks

## YouCompleteMe all project dependecies

1. Add `set (CMAKE_EXPORT_COMPILE_COMMANDS ON)` to top CMakeLists.txt (/project/CMakeLists.txt)
2. Build project
3. Make soft link to `build_dir/compile_commands.json`

```shell
ln -s /home/../PROJ_products/build_PROJ_host_release/compile_commands.json compile_commands.json
```

## CLang-Format

```shell
ln -sf /usr/share/clang/clang-format-6.0/clang-format.py ~/.clang-format.py
```


