

============ Set up as determined by /dba/bin/updSchema =================
Instance        = xxxxxdvl
Group           = xxxxx
Install Scripts = xxxxx.vw.cr.sql
Install file    = /dba/temp/xxxxx.214686.install.xxxxxdvl.xxxxx.list
Use Wrapper     = Y
Batch           = Y
DB Env          = N
============================================================

Start of get_parameters
==========================================
install_sid   = xxxxxdvl
install_group = xxxxx
install_file  = /dba/temp/xxxxx.214686.install.xxxxxdvl.xxxxx.list
wrap          = Y
batch         = Y
db_env        = N
==========================================
End of get_parameters

Start of set_globals
No Storage File specific to xxxxxdvl/install_group found.  Using default.
No Action File specific to xxxxx found.  Using default.
migration_dir      = /dba/etc/migration.d
temp_dir           = /dba/temp
password_file      = /dba/etc/prodctl_xxxxxdvl.pwd
schema_tokens_file = /dba/etc/migration.d/schema_tokens.xxxxx.dat
grant_file         = /dba/etc/migration.d/grants.xxxxx.dat
owner_file         = /dba/etc/migration.d/object_owner.xxxxx.dat
storage_file       = /dba/etc/migration.d/storage.dat
sql_load_file      = /home/xxxxx/updSchema/xxxxx.250505.214686.sql
sql_temp_file      = /dba/temp/temp.214686.load.iadmfgappdev01.xxxxxdvl.xxxxx.sql
sed_temp_file      = /dba/temp/temp.214686.sed.iadmfgappdev01.xxxxxdvl.xxxxx.sed
grant_temp_file    = /dba/temp/temp.214686.grants.iadmfgappdev01.xxxxxdvl.xxxxx.sql
grant_runner       = /dba/etc/migration.d/create_grants.sh
End of set_globals

Start of create_sed_temp_file
User token SYS not in file /dba/etc/prodctl_xxxxxdvl.pwd.
User token SYSTEM not in file /dba/etc/prodctl_xxxxxdvl.pwd.
User token ORDSYS not in file /dba/etc/prodctl_xxxxxdvl.pwd.
User token ORDPLUGINS not in file /dba/etc/prodctl_xxxxxdvl.pwd.
User token APPLSYS not in file /dba/etc/prodctl_xxxxxdvl.pwd.
User token APPLSYSPUB not in file /dba/etc/prodctl_xxxxxdvl.pwd.
User token ALR not in file /dba/etc/prodctl_xxxxxdvl.pwd.
User token AX not in file /dba/etc/prodctl_xxxxxdvl.pwd.
User token AK not in file /dba/etc/prodctl_xxxxxdvl.pwd.
User token XLA not in file /dba/etc/prodctl_xxxxxdvl.pwd.
User token GL not in file /dba/etc/prodctl_xxxxxdvl.pwd.
User token RG not in file /dba/etc/prodctl_xxxxxdvl.pwd.
User token FA not in file /dba/etc/prodctl_xxxxxdvl.pwd.
User token FEM not in file /dba/etc/prodctl_xxxxxdvl.pwd.
User token CS not in file /dba/etc/prodctl_xxxxxdvl.pwd.
User token AP not in file /dba/etc/prodctl_xxxxxdvl.pwd.
User token AR not in file /dba/etc/prodctl_xxxxxdvl.pwd.
User token OE not in file /dba/etc/prodctl_xxxxxdvl.pwd.
User token WIP not in file /dba/etc/prodctl_xxxxxdvl.pwd.
User token IBP not in file /dba/etc/prodctl_xxxxxdvl.pwd.
User token IBA not in file /dba/etc/prodctl_xxxxxdvl.pwd.
User token IBY not in file /dba/etc/prodctl_xxxxxdvl.pwd.
User token IBE not in file /dba/etc/prodctl_xxxxxdvl.pwd.
User token IBU not in file /dba/etc/prodctl_xxxxxdvl.pwd.
User token FII not in file /dba/etc/prodctl_xxxxxdvl.pwd.
User token HRI not in file /dba/etc/prodctl_xxxxxdvl.pwd.
User token POA not in file /dba/etc/prodctl_xxxxxdvl.pwd.
User token ONT not in file /dba/etc/prodctl_xxxxxdvl.pwd.
User token IEU not in file /dba/etc/prodctl_xxxxxdvl.pwd.
User token IEM not in file /dba/etc/prodctl_xxxxxdvl.pwd.
User token OKE not in file /dba/etc/prodctl_xxxxxdvl.pwd.
User token ECX not in file /dba/etc/prodctl_xxxxxdvl.pwd.
User token WSM not in file /dba/etc/prodctl_xxxxxdvl.pwd.
User token MWA not in file /dba/etc/prodctl_xxxxxdvl.pwd.
User token IGC not in file /dba/etc/prodctl_xxxxxdvl.pwd.
End of create_sed_temp_file

============= Sourcing File:  xxxxx.vw.cr.sql ==============================
 
**R122: Special grants check.**
**R122: GRANT_ALLOWED not set.   Now looking for special grants in sql code now **
**R122: Special grant check.  No special grant code found. Continuing with migration.**
 
Start of wrap_prep for xxxxx.vw.cr.sql
nawk: warning: escape sequence `\.' treated as plain `.'
object_name       = xxxxx
object_type_abr   = VW
object_action_abr = CR
owner_token       = APPS
object_type       = VIEW
grant_action      = YES
sysnonym_action   = 
object_action     = CREATE
End of wrap_prep

Start of append_to_sql_load_file
End of append_to_sql_load_file

Start of wrap_grants
Starting create_grants for... 1: APPS VIEW xxxxx APPS
OK:  Create grant to TKF
OK:  Create grant to TKO
OK:  Create grant to TKR
Current value of pSkipTokenList=<APPS:TKF:TKO:TKR>
Returning with value=<TKF:TKO:TKR>
Ending create_grants for...1: APPS VIEW xxxxx APPS:TKF:TKO:TKR
End of wrap_grants

============= End File:  xxxxx.vw.cr.sql ===================================

Start of substitute_variables
End of substitute_variables

Starting check edition type
 
Check edition status. Cleared to proceed with migration
 

SQL*Plus: Release 10.1.0.5.0 - Production on Mon May 5 11:07:55 2025

Copyright (c) 1982, 2005, Oracle.  All rights reserved.

Enter user-name: 
Connected to:
Oracle Database 19c EE High Perf Release 19.0.0.0.0 - Production

SQL> SQL> xxxxxdvl:xxxxx>
============= Sourcing File:  xxxxx.vw.cr.sql ==============================
File:  xxxxx.vw.cr.sql Mon May  5 11:07:55 PDT 2025
Connected.
xxxxxdvl:xxxxx>/******************************************************************************
xxxxxdvl:xxxxx>** Filename:	     $Workfile:   xxxxx.vw.cr.sql  $
xxxxxdvl:xxxxx>**
xxxxxdvl:xxxxx>** Revision:	     $Revision: 1.3 $
xxxxxdvl:xxxxx>**
xxxxxdvl:xxxxx>** Date Last
xxxxxdvl:xxxxx>** Modified:	     $Date: 2025/03/26 09:10:45 $
xxxxxdvl:xxxxx>**
xxxxxdvl:xxxxx>** Last
xxxxxdvl:xxxxx>** Modified By:	     $Author: xxxxx $
xxxxxdvl:xxxxx>**
xxxxxdvl:xxxxx>** Description:
xxxxxdvl:xxxxx>	       Create a view for item descriptions
xxxxxdvl:xxxxx>**
xxxxxdvl:xxxxx>**
xxxxxdvl:xxxxx>** $Log: xxxxx.vw.cr.sql,v $
xxxxxdvl:xxxxx>** Revision 1.3	2025/03/26 09:10:45  xxxxx
xxxxxdvl:xxxxx>** xxxxx - Enabling German Language-modified
xxxxxdvl:xxxxx>**
xxxxxdvl:xxxxx>** Revision 1.2	2025/03/09 11:54:35  xxxxx
xxxxxdvl:xxxxx>** xxxxx - Enabling German Language
xxxxxdvl:xxxxx>**
xxxxxdvl:xxxxx>** Revision 1.1	2015/06/18 13:54:56  xxxxx
xxxxxdvl:xxxxx>** Initial revision
xxxxxdvl:xxxxx>**
xxxxxdvl:xxxxx>--
xxxxxdvl:xxxxx>--   Rev 1.0   18 Jun 2015 13:54:56   xxxxx
xxxxxdvl:xxxxx>--M 108145 - new view
xxxxxdvl:xxxxx>--
xxxxxdvl:xxxxx>--
xxxxxdvl:xxxxx>******************************************************************************/
xxxxxdvl:xxxxx>set verify on;
xxxxxdvl:xxxxx>set echo on;
xxxxxdvl:xxxxx>
xxxxxdvl:xxxxx>create or replace view xxxxx as
  2    select
  3  	 msi.segment1 item,
  4  
xxxxxdvl:xxxxx>	 /* Start: Enabling German Language in Oracle EBS*/
xxxxxdvl:xxxxx>	 --, msi.description
xxxxxdvl:xxxxx>tk_inv_utl.tk_translated_itemdesc(msi.inventory_item_id) description
SP2-0734: unknown command beginning "tk_inv_utl..." - rest of line ignored.
xxxxxdvl:xxxxx>/* End: Enabling German Language in Oracle EBS*/
xxxxxdvl:xxxxx>	 from
SP2-0042: unknown command "from" - rest of line ignored.
xxxxxdvl:xxxxx>	   apps.mtl_system_items_b msi
SP2-0734: unknown command beginning "apps.mtl_s..." - rest of line ignored.
xxxxxdvl:xxxxx>	 where '$Revision: 1.3 $' is not null	/* This clause must be present! */
SP2-0734: unknown command beginning "where '$Re..." - rest of line ignored.
xxxxxdvl:xxxxx>	   and msi.segment2 is null
SP2-0734: unknown command beginning "and msi.se..." - rest of line ignored.
SP2-0044: For a list of known commands enter HELP
and to leave enter EXIT.
xxxxxdvl:xxxxx>	   and msi.organization_id = 82
SP2-0734: unknown command beginning "and msi.or..." - rest of line ignored.
xxxxxdvl:xxxxx>/
    msi.segment1 item,
                     *
ERROR at line 3:
ORA-00936: missing expression


Disconnected from Oracle Database 19c EE High Perf Release 19.0.0.0.0 - Production

Schema Update Script: /home/xxxxx/updSchema/xxxxx.250505.214686.sql
Schema Update Log:    /home/xxxxx/updSchema/xxxxx.250505.214686.log


Mon May 05 11:07:56 PDT 2025 -   10 -    INFO - flexagon.ff.common.core.externalprocess.ExternalProcess.execute - Process Return Code - [2]
Mon May 05 11:07:56 PDT 2025 -   10 -  FINEST - flexagon.fd.plugin.ebs.operations.DeployEBS.isSQLFailed - Entering [[nawk: warning: escape sequence `\.' treated as plain `.', Starting create_grants for... 1: APPS VIEW xxxxx APPS, OK:  Create grant to TKF, OK:  Create grant to TKO, OK:  Create grant to TKR, Current value of pSkipTokenList=<APPS:TKF:TKO:TKR>, Returning with value=<TKF:TKO:TKR>, Ending create_grants for...1: APPS VIEW xxxxx APPS:TKF:TKO:TKR]], [[SOURCE_FILE=/lv01/apps/flexdeploy/work/10002/56223/temp/OMFG/xxxxx.vw.cr.sql, mkdir -p "$TKFI_TOP/sql/OMFG/", cp "$SOURCE_FILE" "/tmp/", cd "/tmp/", updSchema -b xxxxx.vw.cr.sql -ig xxxxx -sid "$SID"]], [/lv01/apps/flexdeploy/work/10002/56223/temp/OMFG/xxxxx.vw.cr.sql]
Mon May 05 11:07:56 PDT 2025 -   10 -  FINEST - flexagon.fd.plugin.ebs.operations.DeployEBS.isSQLFailed - Exiting [false]
