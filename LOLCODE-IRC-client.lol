HAI 1.3

  CAN HAS SOCKS?

  BTW asking user for their nickname
  I HAS A nick_name ITZ A YARN
  VISIBLE "Enter your nickname: "!
  GIMMEH nick_name

  BTW asking user for the hostname
  I HAS A host_name ITZ A YARN
  VISIBLE "Enter hostname (preferably a non-round-robin domain name): "!
  GIMMEH host_name

  BTW asking user for the port
  I HAS A port_number ITZ A YARN
  VISIBLE "Enter port number: "!
  GIMMEH port_number
  port_number IS NOW A NUMBR

  BTW asking user for channels to join
  I HAS A channels ITZ A YARN
  VISIBLE "Enter channels to join (eg '#main'): "!
  GIMMEH channels

  BTW creating client socket
  I HAS A client_socket
  client_socket R I IZ SOCKS'Z BIND YR "ANY" AN YR 11222 MKAY

  BTW resolving hostname to an IP address, if needed
  I HAS A addr ITZ I IZ SOCKS'Z RESOLV YR host_name MKAY

  BTW connecting to IRC server
  I HAS A server
  server R I IZ SOCKS'Z KONN YR client_socket AN YR addr AN YR port_number MKAY

  BTW sending required commands to IRC server to connect and join the channels
  I IZ SOCKS'Z PUT YR client_socket AN YR server AN YR SMOOSH "NICK " nick_name ":3:)" MKAY MKAY
  I IZ SOCKS'Z PUT YR client_socket AN YR server AN YR SMOOSH "USER ~" nick_name " 0 * ::" nick_name ":3:)" MKAY MKAY
  I IZ SOCKS'Z PUT YR client_socket AN YR server AN YR SMOOSH "JOIN " channels ":3:)" MKAY MKAY

  BTW creating output buffer
  I HAS A data

  BTW looping over a blocking recv() function (aka 'GET' in lolcode) and outputting whatever the IRC server sends
  IM IN YR loopy
    data R I IZ SOCKS'Z GET YR client_socket AN YR server AN YR 9000 MKAY
    BTW if server sends a PING, lets respond with a PONG, to keep the connection open
    BOTH SAEM data AN SMOOSH "PING " nick_name ":3:)" MKAY
    O RLY?
      YA RLY
        I IZ SOCKS'Z PUT YR client_socket AN YR server AN YR SMOOSH "PONG " nick_name ":3:)" MKAY MKAY
      MEBEE BOTH SAEM data AN SMOOSH "PING :" nick_name ":3:)" MKAY
        I IZ SOCKS'Z PUT YR client_socket AN YR server AN YR SMOOSH "PONG :" nick_name ":3:)" MKAY MKAY
      MEBEE BOTH SAEM data AN SMOOSH "PING " host_name ":3:)" MKAY
        I IZ SOCKS'Z PUT YR client_socket AN YR server AN YR SMOOSH "PONG " nick_name ":3:)" MKAY MKAY
      MEBEE BOTH SAEM data AN SMOOSH "PING :" host_name ":3:)" MKAY
        I IZ SOCKS'Z PUT YR client_socket AN YR server AN YR SMOOSH "PONG " nick_name ":3:)" MKAY MKAY
      MEBEE BOTH SAEM data AN "PING:3:)"
        I IZ SOCKS'Z PUT YR client_socket AN YR server AN YR SMOOSH "PONG " nick_name ":3:)" MKAY MKAY
      NO WAI
        VISIBLE data
    OIC
  IM OUTTA YR loopy

  BTW, this code is never reached, but putting it here anyway, closing client socket
  I IZ SOCKS'Z CLOSE YR client_socket MKAY

KTHXBYE
