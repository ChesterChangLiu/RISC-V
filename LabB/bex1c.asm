a: DD b
c: DD d
b: DD 0xAAAABBBBCCCCDDDD
d: DD 0x4444333322221111
e: DM 1
f: DM 1
ld x5, c(x0)
ld x6, 0(x5)
ld x8, a(x0)
ld x7, 0(x8)
sd x6, e(x0)
sd x7, f(x0)

add x28, x6, x7
sub x29, x6, x7
sub x18, x7, x6
and x19, x6, x7
or x30, x6, x7
xor x31, x6, x7
xori x20, x6, -1
xori x21, x7, -1


