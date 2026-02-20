# Lightweight heartbeat exchanged between HLCS ↔ LLCS
builtin_interfaces/Time stamp

uint8   node_id             # sender identifier
uint8   status              # 0=OK, 1=WARN, 2=ERROR
uint32  sequence            # monotonic counter
