#pragma comment(lib, "windowsapp")

#include "helloworldwinrt.h"

#include <iostream>
#include "winrt/base.h"
#include "winrt/Windows.Devices.Enumeration.h"

using namespace winrt;
using namespace winrt::Windows::Devices::Enumeration;

extern "C" __declspec (dllexport) int __cdecl print_all_device_information() {

    DeviceInformationCollection infos = DeviceInformation::FindAllAsync().get();

    for (const auto& info : infos) {
        std::wcout << info.Name().c_str() << std::endl;
    }


    fflush(stdout);
    
    return 0;
}
