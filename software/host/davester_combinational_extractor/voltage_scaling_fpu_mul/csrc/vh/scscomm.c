#include "scscomm.h"
#ifdef __cplusplus
extern "C" {
#endif
extern char* strcpy(char*, const char*);
void scsim_comm_genfunc(scsim_communication_data_t *s) {
   s->worklibPath       = (char *) sc_mem_malloc(5);
   strcpy(s->worklibPath, "WORK");
   s->entityName        = (char *) sc_mem_malloc(22);
   strcpy(s->entityName,  "DUMMY_MHDL_CFG_TB_FPU");
   s->architectureName  = (char *) 0;
   s->designUnitType = 19;
   s->topSimFileName    = (char *) sc_mem_malloc(34);
   strcpy(s->topSimFileName, "DEFAULT.DUMMY_MHDL_CFG_TB_FPU.sim");
   s->timebase = 2;
   s->ignorelowres = 1;
   s->timebase_str      = (char *) sc_mem_malloc(3);
   strcpy(s->timebase_str, "NS");
   s->tres_str      = (char *) sc_mem_malloc(5);
   strcpy(s->tres_str, "1 PS");
   s->sn_option = (char *) 0;
   s->tres_time = 1;
   s->tres_timebase = 1;
   s->textio_timebase_unit = 0;
  s->upf_enabled = 0;
  s->jitter_enabled = 0;
   s->isMixedHDL = 1;
   s->mhdlDatVerilog = 0;
   s->qcomMasterSlaveFlow = 0;
   s->partitionFileName = (char *) 0;
   s->genericsFileName = (char *) 0;
   s->cmDirName  = (char *) sc_mem_malloc(9);
   strcpy(s->cmDirName, "simv.vdb");
   s->cmReportName = (char *) 0;
   s->isCovXmlDb  = 1;
   s->cmLogName = (char *) 0;
   s->monsigsFileCount  = 0;
   s->monsigsFileNames  = (char **) 0;
   s->vhpiLibStringCount = 0;
   s->vhpiLibStrings     = (char **) 0;
   s->UserName = (char *) sc_mem_malloc(6);
   strcpy(s->UserName, "david");
   s->CreationDate = (char *) sc_mem_malloc(25);
   strcpy(s->CreationDate, "Wed Dec 16 20:25:07 2015");
   s->Hostname = (char *) sc_mem_malloc(20);
   strcpy(s->Hostname, "david-ThinkPad-T430");
   s->SciroccoVersion = (char *) 0;
   s->designHasHdlXmrCalls = 0;
   s->CompilerName = (char *) sc_mem_malloc(4);
   strcpy(s->CompilerName, "gcc");
   s->CompilerVersion = (char *) sc_mem_malloc(11);
   strcpy(s->CompilerVersion, "GNUC 4.8.4");
   s->CompilerOptions = (char *) sc_mem_malloc(6);
   strcpy(s->CompilerOptions, "-c -O");
   s->LoaderName = (char *) sc_mem_malloc(4);
   strcpy(s->LoaderName, "g++");
   s->LoaderVersion = (char *) 0;
   s->LoaderOptions = (char *) sc_mem_malloc(17);
   strcpy(s->LoaderOptions, "-Wl,-E -lpthread");
   s->ElaborationOptions = (char *) sc_mem_malloc(14);
   strcpy(s->ElaborationOptions, "tb_fpu -debug");
   s->VhdlOptions = (char *) sc_mem_malloc(143);
   strcpy(s->VhdlOptions, "-mxunielab -uni_make -nc -uum -vhtop WORK.dummy_mhdl_cfg_TB_FPU -elaboration_options /tmp/vcs_20151216192505_19307/elaboptfile_19307 -debug 3 ");
   s->VerilogOptions = (char *) 0;
   s->PartitionCount  = 0;
   s->Partitions  = (char **) 0;
   s->twoState = 0;
   s->perf = 1;
   s->event_perf_mode = 14;
   s->db = 1;
   s->hasOvaDummyTop = 0;
   s->isInterpreted = 0;
   s->platformVersion = (char *) sc_mem_malloc(24);
   strcpy(s->platformVersion, "Linux 3.13.0-57-generic");
   s->platform = (char *) sc_mem_malloc(6);
   strcpy(s->platform, "linux");
   s->vcsHome = (char *) sc_mem_malloc(42);
   strcpy(s->vcsHome, "/opt/tools/synopsys/vcs/H-2013.06-SP1-14/");
   s->m_total_processes = 0;
   s->verWork = (char *) sc_mem_malloc(12);
   strcpy(s->verWork, "simv.daidir");
   s->scsimCompileDirName  = (char *) sc_mem_malloc(117);
   strcpy(s->scsimCompileDirName, "/home/david/projects/faultify_github/faultify/software/host/davester_combinational_extractor/voltage_scaling_fpu_mul");
   s->MhdlVerilogTopCount  = 0;
   s->MhdlVerilogTopNames  = (char **) 0;
   s->MhdlVhdlTopCount  = 1;
   s->MhdlVhdlTopNames = (char **) sc_mem_malloc(4*1);
   s->MhdlVhdlTopNames[0] = "WORK.dummy_mhdl_cfg_TB_FPU";
   s->unifiedUseMod = 1;
   s->svaBindEnable = 0;
   s->isSlave = 0;
   s->lic_scsi = 0;
   s->mtvh = 0;
   s->pvmx = 0;
   s->popt = 1;
   s->sigp = 0;
   s->vhdlthreads = 2;
   s->singleSim = 1;
   s->isUCLI = 0;
   s->isGUI = 0;
   s->smart_analysis = 0;
   s->debugLevel = 3;
   s->vdbgWatch = 0;
   s->isFsdbSet = 0;
   s->isFsdbOldSet = 0;
   s->ScsWorkDir = (char *) sc_mem_malloc(117);
   strcpy(s->ScsWorkDir, "/home/david/projects/faultify_github/faultify/software/host/davester_combinational_extractor/voltage_scaling_fpu_mul");
   s->sp_mem_size = 0;
   s->proc_split_num = 0;
   s->LcaLicenseEnabled = 0;
   s->fProfileNew = 0;
   s->accessCheck = 0;
   s->newProfArgs = (char *) 0;
   s->mhdl_root_net_opt = 0;
   s->mhdl_alias_highconn = 0;
   s->mxunielab = 1;
   s->withcheck = 0;
   s->partCompFlow = 0;
   s->partCompDir = (char *) 0;
   s->vfs_db = 0;
  s->no_file_opened_warn = 0;
   s->xprop_global_merge_mode = 0;
   s->xprop_globally_enabled  = 0;
   s->xprop_config_file_used = 0;
   s->xprop_integer  = 0;
   s->xprop_report_tmerge  = 0;
   s->xprop_enabled  = 0;
   s->xprop_index_enabled = 0;
   s->xprop_conv_xint_t0_disabled = 0;
   s->xprop_conv_xint_disabled = 0;
   s->xprop_merge_t0_disabled = 0;
   s->xprop_start_with_merge_disabled = 0;
    s->dataBaseDirName = (char *) sc_mem_malloc(25);
    strcpy(s->dataBaseDirName, "simv.daidir/scsim.db.dir");
}

int scsim_comm_is_slave() {
   return 0;
}

#include "runtime.h"

extern int g_dynamic_phases;
extern int g_pvhdl;
extern int g_pvhdl2cdl;

int ctl_Simulate()
{
    return 0;
}

int pmhdl_Simulate()
{
     return 0;}

int mhdl_Simulate()
{
    extern int (*mhdl_Simulate_fptr_0[])();
    return mhdl_Simulate_fptr_0[g_dynamic_phases]();
}

int pvmx_Simulate()
{
    extern int (*pvmx_Simulate_fptr_0[])();
    return pvmx_Simulate_fptr_0[g_dynamic_phases]();
}

int vhmc_Simulate(simtime_t runtime)
{
    extern int in_simulate;
    int status = 0; 
    in_simulate = 0;
    return status;
}

unsigned int gNumOfSignals() { return 36;}
unsigned int gNumOfDerivedSignals() { return 0;}
#ifdef __cplusplus
}
#endif
