#ifndef helloworldcpp_h
#define helloworldcpp_h

// https://stackoverflow.com/questions/53393585/why-name-mangling-has-no-effect-on-main-function-in-c
extern int main();

// https://en.wikipedia.org/wiki/Name_mangling#Real-world_effects_of_C++_name_mangling
#ifdef __cplusplus
extern "C" {
#endif

    extern int main2();

#ifdef __cplusplus
}
#endif

#endif /* helloworldcpp_h */