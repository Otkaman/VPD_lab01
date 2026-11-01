#!/usr/bin/env bash
ROOT="${1:-$HOME/VPD_lab01}"

run() {
  echo "=== $1 ==="
  (cd "$ROOT/$2" && eval "$3") || echo "!!! FAILED: $1"
  echo
}

run "C"          c          'gcc -Wall -Wextra -pedantic c.c -o c && ./c'
run "C++"        cpp        'g++ -Wall -Wextra -pedantic c++.cpp -o c++ && ./c++'
run "Python"     python     'python3 main.py'
run "JavaScript" javascript 'node js.js'
run "TypeScript" typescript 'tsc ts.ts --outDir dist && node dist/ts.js'
run "Java"       java       'javac -encoding UTF-8 Main.java && java Main && ls *.class'
run "C#"         csharp     'dotnet run'
run "F#"         fsharp     'dotnet run'
run "Go"         go         'go run main.go'
run "Rust"       rust       'rustc main.rs -o main && ./main'
run "Bash"       bash       'bash main.sh'
run "Prolog"     prolog     'swipl -q -s main.pl -g main -t halt'
run "Assembler"  asm        'as assembler.s -o assembler.o && gcc assembler.o -o assembler && ./assembler'