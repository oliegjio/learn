#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include <sys/socket.h>
#include <sys/types.h>

#include <netinet/in.h>

int main() {

    // We need to render an HTML file.
    // We need to send HTML file as response to the client.

    FILE* html_data;
    html_data = fopen("index.html", "r");

    // Variable to hold the contents of HTML file:    

    char response_data[1024];

    // Read file to variable:

    fgets(response_data, 1024, html_data);

    // Create a variable that will hold HTTP header:

    char http_header[2048] = "HTTP/1.1 200 OK\r\n\n";

    // After `\r\n\n` should be HTML file content, for this we will concatenate two strings:

    strcat(http_header, response_data);

    // Now we have all needed data in the `http_header` variable.

    // Create socket:

    int server_socket = socket(AF_INET, SOCK_STREAM, 0);

    // Define the address:

    struct sockaddr_in server_address;

    server_address.sin_family      = AF_INET;
    server_address.sin_port        = htons(80);
    server_address.sin_addr.s_addr = INADDR_ANY;

    // Bind the socket to the address:

    bind(server_socket, (struct sockaddr*) &server_address, sizeof(server_address));

    // Listen for clients:

    listen(server_socket, 5);

    // Forever receive connections from clients and send responses:

    int client_socket;
    while (1) {
        client_socket = accept(server_socket, NULL, NULL);
        send(client_socket, http_header, sizeof(http_header), 0);
        close(client_socket);
    }

    return 0;
}