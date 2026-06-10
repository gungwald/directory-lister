pragma Warnings (Off);
pragma Ada_95;
with System;
with System.Parameters;
with System.Secondary_Stack;
package ada_main is

   gnat_argc : Integer;
   gnat_argv : System.Address;
   gnat_envp : System.Address;

   pragma Import (C, gnat_argc);
   pragma Import (C, gnat_argv);
   pragma Import (C, gnat_envp);

   gnat_exit_status : Integer;
   pragma Import (C, gnat_exit_status);

   GNAT_Version : constant String :=
                    "GNAT Version: 11.2.0" & ASCII.NUL;
   pragma Export (C, GNAT_Version, "__gnat_version");

   Ada_Main_Program_Name : constant String := "_ada_directory_lister" & ASCII.NUL;
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
   u00001 : constant Version_32 := 16#380d0bb7#;
   pragma Export (C, u00001, "directory_listerB");
   u00002 : constant Version_32 := 16#66132de6#;
   pragma Export (C, u00002, "system__standard_libraryB");
   u00003 : constant Version_32 := 16#a621fdc2#;
   pragma Export (C, u00003, "system__standard_libraryS");
   u00004 : constant Version_32 := 16#76789da1#;
   pragma Export (C, u00004, "adaS");
   u00005 : constant Version_32 := 16#ae6bdb20#;
   pragma Export (C, u00005, "ada__command_lineB");
   u00006 : constant Version_32 := 16#3cdef8c9#;
   pragma Export (C, u00006, "ada__command_lineS");
   u00007 : constant Version_32 := 16#a7978b52#;
   pragma Export (C, u00007, "systemS");
   u00008 : constant Version_32 := 16#453645af#;
   pragma Export (C, u00008, "system__secondary_stackB");
   u00009 : constant Version_32 := 16#563cbcd6#;
   pragma Export (C, u00009, "system__secondary_stackS");
   u00010 : constant Version_32 := 16#de2d2db0#;
   pragma Export (C, u00010, "ada__exceptionsB");
   u00011 : constant Version_32 := 16#fba4cbc3#;
   pragma Export (C, u00011, "ada__exceptionsS");
   u00012 : constant Version_32 := 16#51b6c352#;
   pragma Export (C, u00012, "ada__exceptions__last_chance_handlerB");
   u00013 : constant Version_32 := 16#2c60dc9e#;
   pragma Export (C, u00013, "ada__exceptions__last_chance_handlerS");
   u00014 : constant Version_32 := 16#adf22619#;
   pragma Export (C, u00014, "system__soft_linksB");
   u00015 : constant Version_32 := 16#3b2ec6c9#;
   pragma Export (C, u00015, "system__soft_linksS");
   u00016 : constant Version_32 := 16#ce3e0e21#;
   pragma Export (C, u00016, "system__soft_links__initializeB");
   u00017 : constant Version_32 := 16#5697fc2b#;
   pragma Export (C, u00017, "system__soft_links__initializeS");
   u00018 : constant Version_32 := 16#896564a3#;
   pragma Export (C, u00018, "system__parametersB");
   u00019 : constant Version_32 := 16#e0c54f99#;
   pragma Export (C, u00019, "system__parametersS");
   u00020 : constant Version_32 := 16#41837d1e#;
   pragma Export (C, u00020, "system__stack_checkingB");
   u00021 : constant Version_32 := 16#2928e0ba#;
   pragma Export (C, u00021, "system__stack_checkingS");
   u00022 : constant Version_32 := 16#ced09590#;
   pragma Export (C, u00022, "system__storage_elementsB");
   u00023 : constant Version_32 := 16#8a54c156#;
   pragma Export (C, u00023, "system__storage_elementsS");
   u00024 : constant Version_32 := 16#34742901#;
   pragma Export (C, u00024, "system__exception_tableB");
   u00025 : constant Version_32 := 16#fca98aaf#;
   pragma Export (C, u00025, "system__exception_tableS");
   u00026 : constant Version_32 := 16#ce4af020#;
   pragma Export (C, u00026, "system__exceptionsB");
   u00027 : constant Version_32 := 16#cff4e6a4#;
   pragma Export (C, u00027, "system__exceptionsS");
   u00028 : constant Version_32 := 16#69416224#;
   pragma Export (C, u00028, "system__exceptions__machineB");
   u00029 : constant Version_32 := 16#bff81f32#;
   pragma Export (C, u00029, "system__exceptions__machineS");
   u00030 : constant Version_32 := 16#aa0563fc#;
   pragma Export (C, u00030, "system__exceptions_debugB");
   u00031 : constant Version_32 := 16#df8d1a29#;
   pragma Export (C, u00031, "system__exceptions_debugS");
   u00032 : constant Version_32 := 16#171ef819#;
   pragma Export (C, u00032, "system__img_intS");
   u00033 : constant Version_32 := 16#01838199#;
   pragma Export (C, u00033, "system__tracebackB");
   u00034 : constant Version_32 := 16#e71a7d09#;
   pragma Export (C, u00034, "system__tracebackS");
   u00035 : constant Version_32 := 16#1f08c83e#;
   pragma Export (C, u00035, "system__traceback_entriesB");
   u00036 : constant Version_32 := 16#813f5833#;
   pragma Export (C, u00036, "system__traceback_entriesS");
   u00037 : constant Version_32 := 16#a0281f47#;
   pragma Export (C, u00037, "system__traceback__symbolicB");
   u00038 : constant Version_32 := 16#9fa412cf#;
   pragma Export (C, u00038, "system__traceback__symbolicS");
   u00039 : constant Version_32 := 16#701f9d88#;
   pragma Export (C, u00039, "ada__exceptions__tracebackB");
   u00040 : constant Version_32 := 16#6b52f2d4#;
   pragma Export (C, u00040, "ada__exceptions__tracebackS");
   u00041 : constant Version_32 := 16#a0d3d22b#;
   pragma Export (C, u00041, "system__address_imageB");
   u00042 : constant Version_32 := 16#067b1668#;
   pragma Export (C, u00042, "system__address_imageS");
   u00043 : constant Version_32 := 16#8c33a517#;
   pragma Export (C, u00043, "system__wch_conB");
   u00044 : constant Version_32 := 16#bceaa980#;
   pragma Export (C, u00044, "system__wch_conS");
   u00045 : constant Version_32 := 16#9721e840#;
   pragma Export (C, u00045, "system__wch_stwB");
   u00046 : constant Version_32 := 16#91fb8581#;
   pragma Export (C, u00046, "system__wch_stwS");
   u00047 : constant Version_32 := 16#1f681dab#;
   pragma Export (C, u00047, "system__wch_cnvB");
   u00048 : constant Version_32 := 16#b35d1373#;
   pragma Export (C, u00048, "system__wch_cnvS");
   u00049 : constant Version_32 := 16#edec285f#;
   pragma Export (C, u00049, "interfacesS");
   u00050 : constant Version_32 := 16#ece6fdb6#;
   pragma Export (C, u00050, "system__wch_jisB");
   u00051 : constant Version_32 := 16#332d0a52#;
   pragma Export (C, u00051, "system__wch_jisS");
   u00052 : constant Version_32 := 16#267a8ddd#;
   pragma Export (C, u00052, "ada__directoriesB");
   u00053 : constant Version_32 := 16#a8327875#;
   pragma Export (C, u00053, "ada__directoriesS");
   u00054 : constant Version_32 := 16#1dc10386#;
   pragma Export (C, u00054, "ada__calendarB");
   u00055 : constant Version_32 := 16#31350a81#;
   pragma Export (C, u00055, "ada__calendarS");
   u00056 : constant Version_32 := 16#e49bce3e#;
   pragma Export (C, u00056, "interfaces__cB");
   u00057 : constant Version_32 := 16#6c9a16d7#;
   pragma Export (C, u00057, "interfaces__cS");
   u00058 : constant Version_32 := 16#51f2d040#;
   pragma Export (C, u00058, "system__os_primitivesB");
   u00059 : constant Version_32 := 16#a06aeea4#;
   pragma Export (C, u00059, "system__os_primitivesS");
   u00060 : constant Version_32 := 16#5b4659fa#;
   pragma Export (C, u00060, "ada__charactersS");
   u00061 : constant Version_32 := 16#ba03ad8f#;
   pragma Export (C, u00061, "ada__characters__handlingB");
   u00062 : constant Version_32 := 16#21df700b#;
   pragma Export (C, u00062, "ada__characters__handlingS");
   u00063 : constant Version_32 := 16#4b7bb96a#;
   pragma Export (C, u00063, "ada__characters__latin_1S");
   u00064 : constant Version_32 := 16#e6d4fa36#;
   pragma Export (C, u00064, "ada__stringsS");
   u00065 : constant Version_32 := 16#24ece25f#;
   pragma Export (C, u00065, "ada__strings__mapsB");
   u00066 : constant Version_32 := 16#ac61938c#;
   pragma Export (C, u00066, "ada__strings__mapsS");
   u00067 : constant Version_32 := 16#808978c9#;
   pragma Export (C, u00067, "system__bit_opsB");
   u00068 : constant Version_32 := 16#0765e3a3#;
   pragma Export (C, u00068, "system__bit_opsS");
   u00069 : constant Version_32 := 16#4930d90f#;
   pragma Export (C, u00069, "system__unsigned_typesS");
   u00070 : constant Version_32 := 16#20c3a773#;
   pragma Export (C, u00070, "ada__strings__maps__constantsS");
   u00071 : constant Version_32 := 16#4ad8a9d9#;
   pragma Export (C, u00071, "ada__directories__hierarchical_file_namesB");
   u00072 : constant Version_32 := 16#752941c9#;
   pragma Export (C, u00072, "ada__directories__hierarchical_file_namesS");
   u00073 : constant Version_32 := 16#ab4ad33a#;
   pragma Export (C, u00073, "ada__directories__validityB");
   u00074 : constant Version_32 := 16#498b13d5#;
   pragma Export (C, u00074, "ada__directories__validityS");
   u00075 : constant Version_32 := 16#0de7ae30#;
   pragma Export (C, u00075, "ada__strings__fixedB");
   u00076 : constant Version_32 := 16#64881af1#;
   pragma Export (C, u00076, "ada__strings__fixedS");
   u00077 : constant Version_32 := 16#334b96a4#;
   pragma Export (C, u00077, "ada__strings__searchB");
   u00078 : constant Version_32 := 16#73987e07#;
   pragma Export (C, u00078, "ada__strings__searchS");
   u00079 : constant Version_32 := 16#630374d7#;
   pragma Export (C, u00079, "ada__tagsB");
   u00080 : constant Version_32 := 16#cb8ac80c#;
   pragma Export (C, u00080, "ada__tagsS");
   u00081 : constant Version_32 := 16#796f31f1#;
   pragma Export (C, u00081, "system__htableB");
   u00082 : constant Version_32 := 16#235538b8#;
   pragma Export (C, u00082, "system__htableS");
   u00083 : constant Version_32 := 16#089f5cd0#;
   pragma Export (C, u00083, "system__string_hashB");
   u00084 : constant Version_32 := 16#810b53c6#;
   pragma Export (C, u00084, "system__string_hashS");
   u00085 : constant Version_32 := 16#e878a1a7#;
   pragma Export (C, u00085, "system__val_unsS");
   u00086 : constant Version_32 := 16#269742a9#;
   pragma Export (C, u00086, "system__val_utilB");
   u00087 : constant Version_32 := 16#0b373dac#;
   pragma Export (C, u00087, "system__val_utilS");
   u00088 : constant Version_32 := 16#ec4d5631#;
   pragma Export (C, u00088, "system__case_utilB");
   u00089 : constant Version_32 := 16#98423d06#;
   pragma Export (C, u00089, "system__case_utilS");
   u00090 : constant Version_32 := 16#45d85488#;
   pragma Export (C, u00090, "ada__strings__unboundedB");
   u00091 : constant Version_32 := 16#e3f69850#;
   pragma Export (C, u00091, "ada__strings__unboundedS");
   u00092 : constant Version_32 := 16#e6eadae6#;
   pragma Export (C, u00092, "ada__strings__text_outputS");
   u00093 : constant Version_32 := 16#cd3494c7#;
   pragma Export (C, u00093, "ada__strings__utf_encodingB");
   u00094 : constant Version_32 := 16#37e3917d#;
   pragma Export (C, u00094, "ada__strings__utf_encodingS");
   u00095 : constant Version_32 := 16#c2b98963#;
   pragma Export (C, u00095, "ada__strings__utf_encoding__wide_wide_stringsB");
   u00096 : constant Version_32 := 16#91eda35b#;
   pragma Export (C, u00096, "ada__strings__utf_encoding__wide_wide_stringsS");
   u00097 : constant Version_32 := 16#a1d6147d#;
   pragma Export (C, u00097, "system__compare_array_unsigned_8B");
   u00098 : constant Version_32 := 16#0e94fadf#;
   pragma Export (C, u00098, "system__compare_array_unsigned_8S");
   u00099 : constant Version_32 := 16#a8025f3c#;
   pragma Export (C, u00099, "system__address_operationsB");
   u00100 : constant Version_32 := 16#b49b3561#;
   pragma Export (C, u00100, "system__address_operationsS");
   u00101 : constant Version_32 := 16#b2ec367e#;
   pragma Export (C, u00101, "system__put_imagesB");
   u00102 : constant Version_32 := 16#fab624ae#;
   pragma Export (C, u00102, "system__put_imagesS");
   u00103 : constant Version_32 := 16#1ce84679#;
   pragma Export (C, u00103, "ada__strings__text_output__utilsB");
   u00104 : constant Version_32 := 16#3780fb9b#;
   pragma Export (C, u00104, "ada__strings__text_output__utilsS");
   u00105 : constant Version_32 := 16#86c56e5a#;
   pragma Export (C, u00105, "ada__finalizationS");
   u00106 : constant Version_32 := 16#10558b11#;
   pragma Export (C, u00106, "ada__streamsB");
   u00107 : constant Version_32 := 16#67e31212#;
   pragma Export (C, u00107, "ada__streamsS");
   u00108 : constant Version_32 := 16#92d882c5#;
   pragma Export (C, u00108, "ada__io_exceptionsS");
   u00109 : constant Version_32 := 16#95817ed8#;
   pragma Export (C, u00109, "system__finalization_rootB");
   u00110 : constant Version_32 := 16#e865f8c2#;
   pragma Export (C, u00110, "system__finalization_rootS");
   u00111 : constant Version_32 := 16#020a3f4d#;
   pragma Export (C, u00111, "system__atomic_countersB");
   u00112 : constant Version_32 := 16#13cba6df#;
   pragma Export (C, u00112, "system__atomic_countersS");
   u00113 : constant Version_32 := 16#c9a3fcbc#;
   pragma Export (C, u00113, "system__stream_attributesB");
   u00114 : constant Version_32 := 16#84e17e14#;
   pragma Export (C, u00114, "system__stream_attributesS");
   u00115 : constant Version_32 := 16#3e25f63c#;
   pragma Export (C, u00115, "system__stream_attributes__xdrB");
   u00116 : constant Version_32 := 16#ce9a2a0c#;
   pragma Export (C, u00116, "system__stream_attributes__xdrS");
   u00117 : constant Version_32 := 16#64a5543e#;
   pragma Export (C, u00117, "system__fat_fltS");
   u00118 : constant Version_32 := 16#42975d33#;
   pragma Export (C, u00118, "system__fat_lfltS");
   u00119 : constant Version_32 := 16#3847f3d9#;
   pragma Export (C, u00119, "system__fat_llfS");
   u00120 : constant Version_32 := 16#ee7e94e8#;
   pragma Export (C, u00120, "system__crtlS");
   u00121 : constant Version_32 := 16#400ee446#;
   pragma Export (C, u00121, "system__file_attributesS");
   u00122 : constant Version_32 := 16#a985b695#;
   pragma Export (C, u00122, "system__os_constantsS");
   u00123 : constant Version_32 := 16#d88b6b5e#;
   pragma Export (C, u00123, "system__file_ioB");
   u00124 : constant Version_32 := 16#00e66a37#;
   pragma Export (C, u00124, "system__file_ioS");
   u00125 : constant Version_32 := 16#73d2d764#;
   pragma Export (C, u00125, "interfaces__c_streamsB");
   u00126 : constant Version_32 := 16#066a78a0#;
   pragma Export (C, u00126, "interfaces__c_streamsS");
   u00127 : constant Version_32 := 16#44383eb0#;
   pragma Export (C, u00127, "system__os_libB");
   u00128 : constant Version_32 := 16#d872da39#;
   pragma Export (C, u00128, "system__os_libS");
   u00129 : constant Version_32 := 16#2a8e89ad#;
   pragma Export (C, u00129, "system__stringsB");
   u00130 : constant Version_32 := 16#c781a7c7#;
   pragma Export (C, u00130, "system__stringsS");
   u00131 : constant Version_32 := 16#5a0811fa#;
   pragma Export (C, u00131, "system__file_control_blockS");
   u00132 : constant Version_32 := 16#95f86c43#;
   pragma Export (C, u00132, "system__regexpB");
   u00133 : constant Version_32 := 16#84a52c9e#;
   pragma Export (C, u00133, "system__regexpS");
   u00134 : constant Version_32 := 16#f4e097a7#;
   pragma Export (C, u00134, "ada__text_ioB");
   u00135 : constant Version_32 := 16#96df347f#;
   pragma Export (C, u00135, "ada__text_ioS");
   u00136 : constant Version_32 := 16#b5988c27#;
   pragma Export (C, u00136, "gnatS");
   u00137 : constant Version_32 := 16#285afca2#;
   pragma Export (C, u00137, "gnat__directory_operationsB");
   u00138 : constant Version_32 := 16#dc8bca67#;
   pragma Export (C, u00138, "gnat__directory_operationsS");
   u00139 : constant Version_32 := 16#efb85c8a#;
   pragma Export (C, u00139, "gnat__os_libS");
   u00140 : constant Version_32 := 16#2b70b149#;
   pragma Export (C, u00140, "system__concat_3B");
   u00141 : constant Version_32 := 16#ace7d7f7#;
   pragma Export (C, u00141, "system__concat_3S");
   u00142 : constant Version_32 := 16#fd83e873#;
   pragma Export (C, u00142, "system__concat_2B");
   u00143 : constant Version_32 := 16#a5375c82#;
   pragma Export (C, u00143, "system__concat_2S");
   u00144 : constant Version_32 := 16#46b1f5ea#;
   pragma Export (C, u00144, "system__concat_8B");
   u00145 : constant Version_32 := 16#4490c685#;
   pragma Export (C, u00145, "system__concat_8S");
   u00146 : constant Version_32 := 16#46899fd1#;
   pragma Export (C, u00146, "system__concat_7B");
   u00147 : constant Version_32 := 16#5b50d04d#;
   pragma Export (C, u00147, "system__concat_7S");
   u00148 : constant Version_32 := 16#a83b7c85#;
   pragma Export (C, u00148, "system__concat_6B");
   u00149 : constant Version_32 := 16#7550a6e0#;
   pragma Export (C, u00149, "system__concat_6S");
   u00150 : constant Version_32 := 16#608e2cd1#;
   pragma Export (C, u00150, "system__concat_5B");
   u00151 : constant Version_32 := 16#20c9c87c#;
   pragma Export (C, u00151, "system__concat_5S");
   u00152 : constant Version_32 := 16#932a4690#;
   pragma Export (C, u00152, "system__concat_4B");
   u00153 : constant Version_32 := 16#d9f3a072#;
   pragma Export (C, u00153, "system__concat_4S");
   u00154 : constant Version_32 := 16#eca5ecae#;
   pragma Export (C, u00154, "system__memoryB");
   u00155 : constant Version_32 := 16#feeaed66#;
   pragma Export (C, u00155, "system__memoryS");

   --  BEGIN ELABORATION ORDER
   --  ada%s
   --  ada.characters%s
   --  ada.characters.latin_1%s
   --  interfaces%s
   --  system%s
   --  system.address_operations%s
   --  system.address_operations%b
   --  system.atomic_counters%s
   --  system.atomic_counters%b
   --  system.img_int%s
   --  system.os_primitives%s
   --  system.os_primitives%b
   --  system.parameters%s
   --  system.parameters%b
   --  system.crtl%s
   --  interfaces.c_streams%s
   --  interfaces.c_streams%b
   --  system.storage_elements%s
   --  system.storage_elements%b
   --  system.stack_checking%s
   --  system.stack_checking%b
   --  system.string_hash%s
   --  system.string_hash%b
   --  system.htable%s
   --  system.htable%b
   --  system.strings%s
   --  system.strings%b
   --  system.traceback_entries%s
   --  system.traceback_entries%b
   --  system.unsigned_types%s
   --  system.wch_con%s
   --  system.wch_con%b
   --  system.wch_jis%s
   --  system.wch_jis%b
   --  system.wch_cnv%s
   --  system.wch_cnv%b
   --  system.compare_array_unsigned_8%s
   --  system.compare_array_unsigned_8%b
   --  system.concat_2%s
   --  system.concat_2%b
   --  system.concat_3%s
   --  system.concat_3%b
   --  system.concat_4%s
   --  system.concat_4%b
   --  system.concat_5%s
   --  system.concat_5%b
   --  system.concat_6%s
   --  system.concat_6%b
   --  system.concat_7%s
   --  system.concat_7%b
   --  system.concat_8%s
   --  system.concat_8%b
   --  system.traceback%s
   --  system.traceback%b
   --  system.secondary_stack%s
   --  system.standard_library%s
   --  ada.exceptions%s
   --  system.exceptions_debug%s
   --  system.exceptions_debug%b
   --  system.soft_links%s
   --  system.wch_stw%s
   --  system.wch_stw%b
   --  ada.exceptions.last_chance_handler%s
   --  ada.exceptions.last_chance_handler%b
   --  ada.exceptions.traceback%s
   --  ada.exceptions.traceback%b
   --  system.address_image%s
   --  system.address_image%b
   --  system.exception_table%s
   --  system.exception_table%b
   --  system.exceptions%s
   --  system.exceptions%b
   --  system.exceptions.machine%s
   --  system.exceptions.machine%b
   --  system.memory%s
   --  system.memory%b
   --  system.secondary_stack%b
   --  system.soft_links.initialize%s
   --  system.soft_links.initialize%b
   --  system.soft_links%b
   --  system.standard_library%b
   --  system.traceback.symbolic%s
   --  system.traceback.symbolic%b
   --  ada.exceptions%b
   --  ada.command_line%s
   --  ada.command_line%b
   --  ada.io_exceptions%s
   --  ada.strings%s
   --  ada.strings.utf_encoding%s
   --  ada.strings.utf_encoding%b
   --  ada.strings.utf_encoding.wide_wide_strings%s
   --  ada.strings.utf_encoding.wide_wide_strings%b
   --  gnat%s
   --  interfaces.c%s
   --  interfaces.c%b
   --  system.case_util%s
   --  system.case_util%b
   --  system.fat_flt%s
   --  system.fat_lflt%s
   --  system.fat_llf%s
   --  system.os_constants%s
   --  system.os_lib%s
   --  system.os_lib%b
   --  gnat.os_lib%s
   --  system.val_util%s
   --  system.val_util%b
   --  system.val_uns%s
   --  ada.tags%s
   --  ada.tags%b
   --  ada.streams%s
   --  ada.streams%b
   --  ada.strings.text_output%s
   --  ada.strings.text_output.utils%s
   --  ada.strings.text_output.utils%b
   --  system.file_control_block%s
   --  system.finalization_root%s
   --  system.finalization_root%b
   --  ada.finalization%s
   --  system.file_io%s
   --  system.file_io%b
   --  system.put_images%s
   --  system.put_images%b
   --  system.stream_attributes%s
   --  system.stream_attributes.xdr%s
   --  system.stream_attributes.xdr%b
   --  system.stream_attributes%b
   --  ada.calendar%s
   --  ada.calendar%b
   --  ada.text_io%s
   --  ada.text_io%b
   --  system.bit_ops%s
   --  system.bit_ops%b
   --  ada.strings.maps%s
   --  ada.strings.maps%b
   --  ada.strings.maps.constants%s
   --  ada.characters.handling%s
   --  ada.characters.handling%b
   --  ada.strings.search%s
   --  ada.strings.search%b
   --  ada.strings.fixed%s
   --  ada.strings.fixed%b
   --  ada.strings.unbounded%s
   --  ada.strings.unbounded%b
   --  gnat.directory_operations%s
   --  gnat.directory_operations%b
   --  system.file_attributes%s
   --  system.regexp%s
   --  system.regexp%b
   --  ada.directories%s
   --  ada.directories.hierarchical_file_names%s
   --  ada.directories.validity%s
   --  ada.directories.validity%b
   --  ada.directories%b
   --  ada.directories.hierarchical_file_names%b
   --  directory_lister%b
   --  END ELABORATION ORDER

end ada_main;
