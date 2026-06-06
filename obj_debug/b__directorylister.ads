pragma Ada_95;
with System;
package ada_main is
   pragma Warnings (Off);

   gnat_argc : Integer;
   gnat_argv : System.Address;
   gnat_envp : System.Address;

   pragma Import (C, gnat_argc);
   pragma Import (C, gnat_argv);
   pragma Import (C, gnat_envp);

   gnat_exit_status : Integer;
   pragma Import (C, gnat_exit_status);

   GNAT_Version : constant String :=
                    "GNAT Version: 4.9.3" & ASCII.NUL;
   pragma Export (C, GNAT_Version, "__gnat_version");

   Ada_Main_Program_Name : constant String := "_ada_directorylister" & ASCII.NUL;
   pragma Export (C, Ada_Main_Program_Name, "__gnat_ada_main_program_name");

   procedure adainit;
   pragma Export (C, adainit, "adainit");

   procedure adafinal;
   pragma Export (C, adafinal, "adafinal");

   function main
     (argc : Integer;
      argv : System.Address;
      envp : System.Address)
      return Integer;
   pragma Export (C, main, "main");

   type Version_32 is mod 2 ** 32;
   u00001 : constant Version_32 := 16#6bce961f#;
   pragma Export (C, u00001, "directorylisterB");
   u00002 : constant Version_32 := 16#a964624f#;
   pragma Export (C, u00002, "system__standard_libraryB");
   u00003 : constant Version_32 := 16#77babf9a#;
   pragma Export (C, u00003, "system__standard_libraryS");
   u00004 : constant Version_32 := 16#3ffc8e18#;
   pragma Export (C, u00004, "adaS");
   u00005 : constant Version_32 := 16#af50e98f#;
   pragma Export (C, u00005, "ada__stringsS");
   u00006 : constant Version_32 := 16#26c028a3#;
   pragma Export (C, u00006, "systemS");
   u00007 : constant Version_32 := 16#7ff7f3a3#;
   pragma Export (C, u00007, "system__exception_tableB");
   u00008 : constant Version_32 := 16#da42609e#;
   pragma Export (C, u00008, "system__exception_tableS");
   u00009 : constant Version_32 := 16#c3335bfd#;
   pragma Export (C, u00009, "system__htableB");
   u00010 : constant Version_32 := 16#a2029b49#;
   pragma Export (C, u00010, "system__htableS");
   u00011 : constant Version_32 := 16#089f5cd0#;
   pragma Export (C, u00011, "system__string_hashB");
   u00012 : constant Version_32 := 16#005cf037#;
   pragma Export (C, u00012, "system__string_hashS");
   u00013 : constant Version_32 := 16#77a147eb#;
   pragma Export (C, u00013, "system__soft_linksB");
   u00014 : constant Version_32 := 16#d7a0731e#;
   pragma Export (C, u00014, "system__soft_linksS");
   u00015 : constant Version_32 := 16#65bb1402#;
   pragma Export (C, u00015, "system__parametersB");
   u00016 : constant Version_32 := 16#8d4c9cc9#;
   pragma Export (C, u00016, "system__parametersS");
   u00017 : constant Version_32 := 16#643ddf46#;
   pragma Export (C, u00017, "system__secondary_stackB");
   u00018 : constant Version_32 := 16#8da1e7ca#;
   pragma Export (C, u00018, "system__secondary_stackS");
   u00019 : constant Version_32 := 16#39a03df9#;
   pragma Export (C, u00019, "system__storage_elementsB");
   u00020 : constant Version_32 := 16#0b0362a7#;
   pragma Export (C, u00020, "system__storage_elementsS");
   u00021 : constant Version_32 := 16#5fb491cb#;
   pragma Export (C, u00021, "ada__exceptionsB");
   u00022 : constant Version_32 := 16#575a2b7f#;
   pragma Export (C, u00022, "ada__exceptionsS");
   u00023 : constant Version_32 := 16#51ba2b93#;
   pragma Export (C, u00023, "ada__exceptions__last_chance_handlerB");
   u00024 : constant Version_32 := 16#909606f8#;
   pragma Export (C, u00024, "ada__exceptions__last_chance_handlerS");
   u00025 : constant Version_32 := 16#9e373b74#;
   pragma Export (C, u00025, "system__exceptionsB");
   u00026 : constant Version_32 := 16#1ede8e01#;
   pragma Export (C, u00026, "system__exceptionsS");
   u00027 : constant Version_32 := 16#cd9019cf#;
   pragma Export (C, u00027, "system__exceptions__machineS");
   u00028 : constant Version_32 := 16#a2eb6533#;
   pragma Export (C, u00028, "system__exceptions_debugB");
   u00029 : constant Version_32 := 16#ddc7391b#;
   pragma Export (C, u00029, "system__exceptions_debugS");
   u00030 : constant Version_32 := 16#570325c8#;
   pragma Export (C, u00030, "system__img_intB");
   u00031 : constant Version_32 := 16#241bc861#;
   pragma Export (C, u00031, "system__img_intS");
   u00032 : constant Version_32 := 16#ff5c7695#;
   pragma Export (C, u00032, "system__tracebackB");
   u00033 : constant Version_32 := 16#0ec4b7fe#;
   pragma Export (C, u00033, "system__tracebackS");
   u00034 : constant Version_32 := 16#8c33a517#;
   pragma Export (C, u00034, "system__wch_conB");
   u00035 : constant Version_32 := 16#3dbd0a71#;
   pragma Export (C, u00035, "system__wch_conS");
   u00036 : constant Version_32 := 16#9721e840#;
   pragma Export (C, u00036, "system__wch_stwB");
   u00037 : constant Version_32 := 16#10ac2670#;
   pragma Export (C, u00037, "system__wch_stwS");
   u00038 : constant Version_32 := 16#9b29844d#;
   pragma Export (C, u00038, "system__wch_cnvB");
   u00039 : constant Version_32 := 16#320ab082#;
   pragma Export (C, u00039, "system__wch_cnvS");
   u00040 : constant Version_32 := 16#69adb1b9#;
   pragma Export (C, u00040, "interfacesS");
   u00041 : constant Version_32 := 16#ece6fdb6#;
   pragma Export (C, u00041, "system__wch_jisB");
   u00042 : constant Version_32 := 16#b27aa9a3#;
   pragma Export (C, u00042, "system__wch_jisS");
   u00043 : constant Version_32 := 16#8cb17bcd#;
   pragma Export (C, u00043, "system__traceback_entriesB");
   u00044 : constant Version_32 := 16#93d14831#;
   pragma Export (C, u00044, "system__traceback_entriesS");
   u00045 : constant Version_32 := 16#41837d1e#;
   pragma Export (C, u00045, "system__stack_checkingB");
   u00046 : constant Version_32 := 16#a87f434b#;
   pragma Export (C, u00046, "system__stack_checkingS");
   u00047 : constant Version_32 := 16#914b496f#;
   pragma Export (C, u00047, "ada__strings__fixedB");
   u00048 : constant Version_32 := 16#dc686502#;
   pragma Export (C, u00048, "ada__strings__fixedS");
   u00049 : constant Version_32 := 16#96e9c1e7#;
   pragma Export (C, u00049, "ada__strings__mapsB");
   u00050 : constant Version_32 := 16#6a512c5d#;
   pragma Export (C, u00050, "ada__strings__mapsS");
   u00051 : constant Version_32 := 16#f5f969c5#;
   pragma Export (C, u00051, "system__bit_opsB");
   u00052 : constant Version_32 := 16#0765e3a3#;
   pragma Export (C, u00052, "system__bit_opsS");
   u00053 : constant Version_32 := 16#77c6ba0c#;
   pragma Export (C, u00053, "system__unsigned_typesS");
   u00054 : constant Version_32 := 16#12c24a43#;
   pragma Export (C, u00054, "ada__charactersS");
   u00055 : constant Version_32 := 16#4b7bb96a#;
   pragma Export (C, u00055, "ada__characters__latin_1S");
   u00056 : constant Version_32 := 16#cd985418#;
   pragma Export (C, u00056, "ada__strings__searchB");
   u00057 : constant Version_32 := 16#b5a8c1d6#;
   pragma Export (C, u00057, "ada__strings__searchS");
   u00058 : constant Version_32 := 16#9a3f0a9b#;
   pragma Export (C, u00058, "ada__text_ioB");
   u00059 : constant Version_32 := 16#91b334da#;
   pragma Export (C, u00059, "ada__text_ioS");
   u00060 : constant Version_32 := 16#1b5643e2#;
   pragma Export (C, u00060, "ada__streamsB");
   u00061 : constant Version_32 := 16#2564c958#;
   pragma Export (C, u00061, "ada__streamsS");
   u00062 : constant Version_32 := 16#db5c917c#;
   pragma Export (C, u00062, "ada__io_exceptionsS");
   u00063 : constant Version_32 := 16#08ba48f3#;
   pragma Export (C, u00063, "ada__tagsB");
   u00064 : constant Version_32 := 16#58fae56f#;
   pragma Export (C, u00064, "ada__tagsS");
   u00065 : constant Version_32 := 16#4266b2a8#;
   pragma Export (C, u00065, "system__val_unsB");
   u00066 : constant Version_32 := 16#676e5737#;
   pragma Export (C, u00066, "system__val_unsS");
   u00067 : constant Version_32 := 16#27b600b2#;
   pragma Export (C, u00067, "system__val_utilB");
   u00068 : constant Version_32 := 16#8a609e5d#;
   pragma Export (C, u00068, "system__val_utilS");
   u00069 : constant Version_32 := 16#d1060688#;
   pragma Export (C, u00069, "system__case_utilB");
   u00070 : constant Version_32 := 16#02c94174#;
   pragma Export (C, u00070, "system__case_utilS");
   u00071 : constant Version_32 := 16#e0b7a7e8#;
   pragma Export (C, u00071, "interfaces__c_streamsB");
   u00072 : constant Version_32 := 16#6c8b8ac5#;
   pragma Export (C, u00072, "interfaces__c_streamsS");
   u00073 : constant Version_32 := 16#0942f4de#;
   pragma Export (C, u00073, "system__crtlS");
   u00074 : constant Version_32 := 16#ec6e1273#;
   pragma Export (C, u00074, "system__file_ioB");
   u00075 : constant Version_32 := 16#b7814984#;
   pragma Export (C, u00075, "system__file_ioS");
   u00076 : constant Version_32 := 16#8cbe6205#;
   pragma Export (C, u00076, "ada__finalizationB");
   u00077 : constant Version_32 := 16#22e22193#;
   pragma Export (C, u00077, "ada__finalizationS");
   u00078 : constant Version_32 := 16#95817ed8#;
   pragma Export (C, u00078, "system__finalization_rootB");
   u00079 : constant Version_32 := 16#69325b33#;
   pragma Export (C, u00079, "system__finalization_rootS");
   u00080 : constant Version_32 := 16#769e25e6#;
   pragma Export (C, u00080, "interfaces__cB");
   u00081 : constant Version_32 := 16#96001448#;
   pragma Export (C, u00081, "interfaces__cS");
   u00082 : constant Version_32 := 16#d0432c8d#;
   pragma Export (C, u00082, "system__img_enum_newB");
   u00083 : constant Version_32 := 16#478c2e63#;
   pragma Export (C, u00083, "system__img_enum_newS");
   u00084 : constant Version_32 := 16#582c41a9#;
   pragma Export (C, u00084, "system__os_libB");
   u00085 : constant Version_32 := 16#fc501b71#;
   pragma Export (C, u00085, "system__os_libS");
   u00086 : constant Version_32 := 16#1a817b8e#;
   pragma Export (C, u00086, "system__stringsB");
   u00087 : constant Version_32 := 16#587f39c5#;
   pragma Export (C, u00087, "system__stringsS");
   u00088 : constant Version_32 := 16#6cd949dc#;
   pragma Export (C, u00088, "system__file_control_blockS");
   u00089 : constant Version_32 := 16#1f8826cb#;
   pragma Export (C, u00089, "system__finalization_mastersB");
   u00090 : constant Version_32 := 16#69c344ba#;
   pragma Export (C, u00090, "system__finalization_mastersS");
   u00091 : constant Version_32 := 16#57a37a42#;
   pragma Export (C, u00091, "system__address_imageB");
   u00092 : constant Version_32 := 16#872cb599#;
   pragma Export (C, u00092, "system__address_imageS");
   u00093 : constant Version_32 := 16#7268f812#;
   pragma Export (C, u00093, "system__img_boolB");
   u00094 : constant Version_32 := 16#d3195948#;
   pragma Export (C, u00094, "system__img_boolS");
   u00095 : constant Version_32 := 16#d7aac20c#;
   pragma Export (C, u00095, "system__ioB");
   u00096 : constant Version_32 := 16#b882dfec#;
   pragma Export (C, u00096, "system__ioS");
   u00097 : constant Version_32 := 16#6d4d969a#;
   pragma Export (C, u00097, "system__storage_poolsB");
   u00098 : constant Version_32 := 16#e88eea7e#;
   pragma Export (C, u00098, "system__storage_poolsS");
   u00099 : constant Version_32 := 16#e34550ca#;
   pragma Export (C, u00099, "system__pool_globalB");
   u00100 : constant Version_32 := 16#c88d2d16#;
   pragma Export (C, u00100, "system__pool_globalS");
   u00101 : constant Version_32 := 16#6810466c#;
   pragma Export (C, u00101, "system__memoryB");
   u00102 : constant Version_32 := 16#7fbd4e97#;
   pragma Export (C, u00102, "system__memoryS");
   u00103 : constant Version_32 := 16#1220f12d#;
   pragma Export (C, u00103, "system__storage_pools__subpoolsB");
   u00104 : constant Version_32 := 16#b0e8cddc#;
   pragma Export (C, u00104, "system__storage_pools__subpoolsS");
   u00105 : constant Version_32 := 16#aba9f469#;
   pragma Export (C, u00105, "system__storage_pools__subpools__finalizationB");
   u00106 : constant Version_32 := 16#9662cb63#;
   pragma Export (C, u00106, "system__storage_pools__subpools__finalizationS");
   u00107 : constant Version_32 := 16#fd2ad2f1#;
   pragma Export (C, u00107, "gnatS");
   u00108 : constant Version_32 := 16#09bcc813#;
   pragma Export (C, u00108, "gnat__directory_operationsB");
   u00109 : constant Version_32 := 16#d35e8891#;
   pragma Export (C, u00109, "gnat__directory_operationsS");
   u00110 : constant Version_32 := 16#239b1678#;
   pragma Export (C, u00110, "ada__characters__handlingB");
   u00111 : constant Version_32 := 16#313e5d46#;
   pragma Export (C, u00111, "ada__characters__handlingS");
   u00112 : constant Version_32 := 16#34090881#;
   pragma Export (C, u00112, "ada__strings__maps__constantsS");
   u00113 : constant Version_32 := 16#8328c314#;
   pragma Export (C, u00113, "gnat__os_libS");
   --  BEGIN ELABORATION ORDER
   --  ada%s
   --  ada.characters%s
   --  ada.characters.handling%s
   --  ada.characters.latin_1%s
   --  gnat%s
   --  interfaces%s
   --  system%s
   --  system.case_util%s
   --  system.case_util%b
   --  system.htable%s
   --  system.img_bool%s
   --  system.img_bool%b
   --  system.img_enum_new%s
   --  system.img_enum_new%b
   --  system.img_int%s
   --  system.img_int%b
   --  system.io%s
   --  system.io%b
   --  system.parameters%s
   --  system.parameters%b
   --  system.crtl%s
   --  interfaces.c_streams%s
   --  interfaces.c_streams%b
   --  system.standard_library%s
   --  system.exceptions_debug%s
   --  system.exceptions_debug%b
   --  system.storage_elements%s
   --  system.storage_elements%b
   --  system.stack_checking%s
   --  system.stack_checking%b
   --  system.string_hash%s
   --  system.string_hash%b
   --  system.htable%b
   --  system.strings%s
   --  system.strings%b
   --  system.os_lib%s
   --  gnat.os_lib%s
   --  system.traceback_entries%s
   --  system.traceback_entries%b
   --  ada.exceptions%s
   --  system.soft_links%s
   --  system.unsigned_types%s
   --  system.val_uns%s
   --  system.val_util%s
   --  system.val_util%b
   --  system.val_uns%b
   --  system.wch_con%s
   --  system.wch_con%b
   --  system.wch_cnv%s
   --  system.wch_jis%s
   --  system.wch_jis%b
   --  system.wch_cnv%b
   --  system.wch_stw%s
   --  system.wch_stw%b
   --  ada.exceptions.last_chance_handler%s
   --  ada.exceptions.last_chance_handler%b
   --  system.address_image%s
   --  system.bit_ops%s
   --  system.bit_ops%b
   --  system.exception_table%s
   --  system.exception_table%b
   --  ada.io_exceptions%s
   --  ada.strings%s
   --  ada.strings.maps%s
   --  ada.strings.fixed%s
   --  ada.strings.maps.constants%s
   --  ada.strings.search%s
   --  ada.strings.search%b
   --  ada.tags%s
   --  ada.streams%s
   --  ada.streams%b
   --  interfaces.c%s
   --  system.exceptions%s
   --  system.exceptions%b
   --  system.exceptions.machine%s
   --  system.finalization_root%s
   --  system.finalization_root%b
   --  ada.finalization%s
   --  ada.finalization%b
   --  system.storage_pools%s
   --  system.storage_pools%b
   --  system.finalization_masters%s
   --  system.storage_pools.subpools%s
   --  system.storage_pools.subpools.finalization%s
   --  system.storage_pools.subpools.finalization%b
   --  gnat.directory_operations%s
   --  system.memory%s
   --  system.memory%b
   --  system.standard_library%b
   --  system.pool_global%s
   --  system.pool_global%b
   --  system.file_control_block%s
   --  system.file_io%s
   --  system.secondary_stack%s
   --  system.file_io%b
   --  system.storage_pools.subpools%b
   --  system.finalization_masters%b
   --  interfaces.c%b
   --  ada.tags%b
   --  ada.strings.fixed%b
   --  ada.strings.maps%b
   --  system.soft_links%b
   --  system.os_lib%b
   --  ada.characters.handling%b
   --  system.secondary_stack%b
   --  gnat.directory_operations%b
   --  system.address_image%b
   --  system.traceback%s
   --  ada.exceptions%b
   --  system.traceback%b
   --  ada.text_io%s
   --  ada.text_io%b
   --  directorylister%b
   --  END ELABORATION ORDER


end ada_main;
