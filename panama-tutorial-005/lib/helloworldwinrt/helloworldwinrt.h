#pragma once

#ifdef __cplusplus
// to properly export function when building project with MSBuild
extern "C" __declspec (dllexport) int __cdecl print_number_of_devices();
#else
// to support jextract
extern int print_number_of_devices();
#endif
