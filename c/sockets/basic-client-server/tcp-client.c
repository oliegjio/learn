#include <stdio.h>
#include <stdlib.h>

#include <sys/socket.h>
#include <sys/types.h>

#include <netinet/in.h>

int main() {
 
    // Create client socket:

    int client_socket = socket(AF_INET, SOCK_STREAM, 0);

    //
    // Function socket() will return a file descriptor that can be later used to manipulate the socket.
    //

    // Specify the address for socket:

    struct sockaddr_in server_address;

    server_address.sin_family      = AF_INET;
    server_address.sin_port        = htons(9002);
    server_address.sin_addr.s_addr = INADDR_ANY;
    
    // Connect to the server with specified address:

    int connection_status = connect(client_socket, (struct sockaddr*) &server_address, sizeof(server_address));

    // Check for error with connection, connect() could return either:
    // 0 - Success.
    // -1 - Some error occurred.

    if (connection_status == -1) {
        printf("There was an error making a connection to the remote socket. \n");
    }

    // Receive data from the server:
    
    char server_response[256];
    recv(client_socket, &server_response, sizeof(server_response), 0);

    // Print server response:

    printf("The server send: %s \n", server_response);

    // Close the client socket:

    close(client_socket);   
    
    return 0;
}