#ifdef __cplusplus
extern "C" {
#endif

int main(int argc, char **argv)
{
extern void save_restore_check(int, char**);

extern char** trackerParseArgs(int argc, char** argv);
extern int trackerCountArgs(char** argv);
extern void mhdlPreMainScMx(int, char**);
extern int mhdl_scsim_main(int, char**);

    save_restore_check(argc, argv);
    argv = trackerParseArgs(argc, argv);
    argc = trackerCountArgs(argv);
    mhdlPreMainScMx(argc, argv);
    return mhdl_scsim_main(argc, argv);
}

#ifdef __cplusplus
}
#endif
