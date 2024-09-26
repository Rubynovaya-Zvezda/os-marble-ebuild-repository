# hyprwayland-scanner
A Hyprland implementation of wayland-scanner, in and for C++.

## Usage

```sh
hyprwayland-scanner '/path/to/proto' '/path/to/output/directory'
```

## Dependencies

Requires a compiler with C++23 support.

Dep list:
 - pugixml

## Building

```sh
cmake -DCMAKE_INSTALL_PREFIX=/usr -B build
cmake --build build -j `nproc`
```

### Installation

```sh
sudo cmake --install build
```
