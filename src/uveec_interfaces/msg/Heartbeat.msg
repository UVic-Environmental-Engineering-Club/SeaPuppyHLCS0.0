# Lightweight heartbeat exchanged between HLCS and LLCS
# node_id enum:
#   1 = HLCS
#   2 = LLCS
#
# status enum:
#   0 = OK
#   1 = WARN
#   2 = ERROR
builtin_interfaces/Time stamp

uint8 node_id     # sender identifier
uint8 status      # 0=OK, 1=WARN, 2=ERROR
uint32 sequence   # monotonic counter
uint32 uptime_ms  # ms since node start