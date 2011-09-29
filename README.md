Dork
====

DOT to PNG as a service.

Run the server:

    dorkd stomp://mq.yourdomain.com:61613

Use the service:

    cat graph.dot | dork stomp://mq.yourdomain.com:61613 > graph.png

You'll need a Stomp server of course. If you don't specify the location of
this it'll default to `stomp://localhost:61613`.

The server will need dot installed.
