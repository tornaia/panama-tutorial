#pragma once

#ifdef __cplusplus
// to properly export function when building project with MSBuild
extern "C" __declspec (dllexport) int __cdecl print_all_device_information();
#else
// to support jextract
extern int print_all_device_information();
#endif
