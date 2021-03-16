a: DD 1024
b: DD 2048
c: DD e
d: DD f
e: DD 4096
f: DD 8192
ld x5, a(x0)
ld x6, b(x0)
ld x7, c(x0)
ld x29, 0(x7)
ld x28, d(x0)
ld x30, 0(x28)
add x5, x5, x6
add x29, x29, x5
add x30, x29, x30
srai x31, x30, 2
sd x31, 16(x0)