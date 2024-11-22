The .vsb install script installs the healers.

There is one healer per channel.
Each healer is installed via a b64-encoded powershell launcher with its own b64-encoded command.

E.g. channel 1

The healer is COM hijack that triggers a DLL (the healer payload).
The DLL installs a sheduled task by running a powershell command (the "healer payload's payload").
The scheduled task calls the C2 payload (GistExec).