; ModuleID = 'main'
source_filename = "main"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%string = type { i8*, i32 }

define i32 @main() {
entry:
  %b = alloca i1
  %a = alloca i1
  store i1 false, i1* %a
  store i1 true, i1* %b
  %0 = load i1, i1* %a
  store i1 %0, i1* %b
  ret i32 0
}

declare void @console__log(%string)