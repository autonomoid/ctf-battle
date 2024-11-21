#include <windows.h>
#include <shlobj.h> // For SHGetFolderPath
#include <fstream>  // For file operations
#include <string>

// Function to write "Success" to a file on the desktop
void WriteToDesktop() {
    wchar_t desktopPath[MAX_PATH];

    // Get the desktop directory path
    if (SUCCEEDED(SHGetFolderPathW(NULL, CSIDL_DESKTOP, NULL, 0, desktopPath))) {
        // Create the full file path
        std::wstring filePath = std::wstring(desktopPath) + L"\\com_hijack.txt";

        // Write "Success" to the file
        std::ofstream file(filePath);
        if (file.is_open()) {
            file << "Success";
            file.close();
        }
    }
}

// DLL Entry Point
BOOL APIENTRY DllMain(HMODULE hModule,
    DWORD ul_reason_for_call,
    LPVOID lpReserved)
{
    switch (ul_reason_for_call)
    {
    case DLL_PROCESS_ATTACH:
        WriteToDesktop();
        break;
    case DLL_THREAD_ATTACH:
    case DLL_THREAD_DETACH:
    case DLL_PROCESS_DETACH:
        break;
    }
    return TRUE;
}

