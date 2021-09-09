# ToyOS

## Build Cross Compiler

linker from my macbook seemed to be problematic, built clang from source (https://github.com/llvm/llvm-project) and installed it to `~/opt/cross`

    git clone https://github.com/llvm/llvm-project.git
    cd llvm-project
    mkdir build
    cd build
    cmake -DCMAKE_BUILD_TYPE:STRING=Release -DLLVM_ENABLE_PROJECTS="clang;lld" -DCMAKE_INSTALL_PREFIX=$HOME/opt/cross -G Ninja  ../llvm
    ninja
    ninja install


## Build

    make
