#pragma comment(lib, "windowsapp")

#include "helloworldwinrt.h"

#include <iostream>
#include "winrt/base.h"
#include "winrt/Windows.Devices.Enumeration.h"
#include <winrt/Windows.Foundation.Collections.h>

using namespace winrt;
using namespace winrt::Windows::Devices::Enumeration;

extern "C" __declspec (dllexport) int __cdecl print_number_of_devices() {

    DeviceInformationCollection infos = DeviceInformation::FindAllAsync().get();
    std::wcout << "Number of devices: " << infos.Size() << std::endl;
    fflush(stdout);
    
    return 0;
}
