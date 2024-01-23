1. client checks for server (send broadcast, UDP, message `nc -ub broadcast udp-port-server`)
1.1 server exists:
1.1.1 server sends back to the client its IP using TCP
1.1.2 client communicates its details (user+ip) to the server via TCP
1.1.3 server stores usr+ip in a data structure (hashmap)
1.2 server doesn't exit: create a new server that listens to UDP and TCP requests of the clients and goto 1.1
1.2.1 check if other servers exist and kill your server if your IP is greater than one of the other servers
2. user requests (TCP) users list
2.1 if the server is down: goto 1.2
2.2 if the server is up: server sends via TCP the user+ip list to the client
2.2.1 client to client comm via TCP
