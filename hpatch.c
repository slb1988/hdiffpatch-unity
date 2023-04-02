
#include <stdint.h>
#include "hpatchz.c"

#if defined(_WIN32)
#define HPATCH_EXPORT __declspec(dllexport)
#else
#define HPATCH_EXPORT extern 
#endif

HPATCH_EXPORT int hpatchz(const char *oldFileName,const char *diffFileName,
            const char *outNewFileName, size_t cacheMemory){
    return hpatch(oldFileName,diffFileName,outNewFileName,
                  hpatch_FALSE,cacheMemory,0,0,1);
}