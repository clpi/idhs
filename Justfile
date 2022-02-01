alias r := run
alias b := build
alias t := test
alias c := clean
alias f := fmt
alias i := install

NAM := "idell"
BIN := "./dist/bin/"
OUT := "./dist/"
SRC := "./app/"

default: clean build run

clean: 
    @rm -rf {{OUT}} && mkdir -p {{OUT}}bin

crun:
    @echo "\x1b[32;1m[CRUN]  \x1b[0m\x1b[32m{{NAM}} \x1b[0m {{BIN}}{{NAM}}..."
    @cabal run

build:
    @echo "\x1b[33;1m[BUILD] \x1b[0m\x1b[33m{{NAM}} \x1b[0m {{BIN}}{{NAM}}..."
    @ghc --make -o {{BIN}}{{NAM}} {{SRC}}Main.hs

run:
    @echo "\x1b[32;1m[RUN]   \x1b[0m\x1b[32m{{NAM}} \x1b[0m {{BIN}}{{NAM}}..."
    @{{BIN}}{{NAM}}

test: 
    @echo ""


fmt:
    @echo ""

push +MESSAGE="":
    git add --a
    git commit -m {{MESSAGE}}
    git push gh master

install:
	@echo ""

ls:
	@just --list



_msg STEP MSG +META="{{BIN}}{{NAM}}":
	@echo "\x1b[32;1m[{{STEP}}]:  \x1b[0m\x1b[32m{{MSG}} \x1b[0m {{META}}..."
