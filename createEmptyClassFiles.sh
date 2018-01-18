#!/bin/sh

cat _.txt > $1.h
echo -e "#ifndef $1_h\n#define $1_h\n\nclass MyClass\n{\n public:\n  $1();\n  ~$1();\n\n private:\n};\n#endif" >> $1.h

cat _.txt > $1.cc
echo -e "#include \"./$1.h\" \n\n$1::$1(); \n{} \n\n$1::~$1() \n{}" >> $1.cc
