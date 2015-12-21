#include "stdio.h"
#ifdef __cplusplus
extern "C" {
#endif
extern char at_least_one_object_file;
extern void *kernel_scs_file_ht_new(const void *, int);
extern int kernel_scs_file_ht_get(void *, const char *, int *);
extern int  strcmp(const char*, const char*);
  typedef struct {
    char* dFileName;
  } lPkgFileInfoStruct;

  typedef struct {
    char* dFileName;
    char* dRealFileName;
    long dFileOffset;
    unsigned long dFileSize;
    int dFileModTime;
    unsigned int simFlag;
  } lFileInfoStruct;

static int lNumOfScsFiles;
  static lFileInfoStruct lFInfoArr[] = {
  {"synopsys_sim.setup_0", "/opt/tools/synopsys/vcs/H-2013.06-SP1-14//bin/synopsys_sim.setup", 4339, 4526, 1424580821, 0},
  {"./TB_FPU.sim", "", 0, 4339, 0, 1},
  {"linux/packages/IEEE/lib/STD_LOGIC_UNSIGNED__.sim", "", 8865, 80101, 0, 0},
  {"linux/packages/IEEE/lib/STD_LOGIC_UNSIGNED.sim", "", 88966, 35285, 0, 0},
  {"./TXT_UTIL__.sim", "", 124251, 90028, 0, 1},
  {"./TXT_UTIL.sim", "", 214279, 16602, 0, 1},
  {"./TEST_PKG__.sim", "", 230881, 7767, 0, 1},
  {"./TEST_PKG.sim", "", 238648, 4239, 0, 1},
  {"./DUMMY_MHDL_CFG_TB_FPU.sim", "", 242887, 10829, 0, 0},
  {"./TB_FPU__RTL.sim", "", 253716, 43229, 0, 1},
  {"./CUT_WRAPPER_STATIC_ALL.sim", "", 296945, 5113, 0, 1},
  {"./CUT_WRAPPER_STATIC_ALL__BEHAV.sim", "", 302058, 26595, 0, 1},
  {"./CIRCUIT_UNDER_TEST.sim", "", 328653, 18145, 0, 0},
  {"./CIRCUIT_UNDER_TEST__MODULE.sim", "", 346798, 11024, 0, 0},

  };
  static lPkgFileInfoStruct lPkgFileInfoArr[] = {
  {"linux/packages/IEEE/lib/STD_LOGIC_UNSIGNED__.sim"},
  {"./TXT_UTIL__.sim"},
  {"./TEST_PKG__.sim"},

  };
int gGetFileInfo(char *xFileName, long xTimeStamp, long *xFileOffsetPtr, size_t *xFileSizePtr, int xCheckInPkgSimFiles,  char **xRealFileName)
{
  int j, lNumOfPkgSimFiles;
  static void *ht = 0;
  static int i = 0;
  static int k = 0;
at_least_one_object_file = 1;
  lNumOfScsFiles = 14;
  lNumOfPkgSimFiles = 3;
  if (xCheckInPkgSimFiles)
  {
     for (j = 0; j < lNumOfPkgSimFiles; j++)
     {
       char* lFName;
       lFName = lPkgFileInfoArr[k].dFileName;
       if (strcmp(lFName, xFileName) == 0)
           return 0;
       k = (k + 1) % lNumOfPkgSimFiles;
     }
     return 1;
  }
  if (!ht)
  {
    ht  = kernel_scs_file_ht_new(lFInfoArr, lNumOfScsFiles);
  }
  if (ht && (kernel_scs_file_ht_get(ht, xFileName, &i) == 0))
  { /* found it! The indicator 'i' was set properly. */
    if (xRealFileName)
        *xRealFileName = lFInfoArr[i].dRealFileName;
    *xFileSizePtr = lFInfoArr[i].dFileSize;
    *xFileOffsetPtr = lFInfoArr[i].dFileOffset;
    return 0;
  }
  return 1;
}
int getNextSimFile(char **fn, long *offset)
{
  static int cur;
  for ( ; cur < lNumOfScsFiles; ) {
    if (!lFInfoArr[cur].simFlag) {
      cur++;
      continue;
    }
    *fn = lFInfoArr[cur].dFileName;
    *offset = lFInfoArr[cur].dFileOffset;
    cur++;
    return 1;
  }
  return 0;
}

#ifdef __cplusplus
}
#endif
