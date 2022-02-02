#!/bin/sh


# This is a bash script to build the cortos project.
# It generates a mmap file which is used in the `run_cmodel.sh`
# to run the program on the C simulator.

_MAIN="main";
_CORTOS_SRC_DIR="cortos_src";
_CORTOS_INIT_00="./init_00.s";
_CORTOS_TRAP_HANDLER="./trap_handlers.s";

_CORTOS_VMAP="$_CORTOS_SRC_DIR/vmap.txt";
_CORTOS_ASM="$_CORTOS_SRC_DIR/cortos_asm.s";
_CORTOS_C="$_CORTOS_SRC_DIR/cortos.c";
_CORTOS_PRINTF="$_CORTOS_SRC_DIR/__cortos_ee_printf.c";
_CORTOS_PRINTF_CVT="$_CORTOS_SRC_DIR/__cvt.c";
_CORTOS_LOCK_UNLOCK="$_CORTOS_SRC_DIR/cortos_lock_unlock.s";
_CORTOS_RES_LOCK_UNLOCK="$_CORTOS_SRC_DIR/__cortos_lock_unlock.s";
_CORTOS_Q_LOCK_UNLOCK="$_CORTOS_SRC_DIR/__cortos_q_lock_unlock.s";
_CORTOS_MSG_QUEUE="$_CORTOS_SRC_DIR/cortos_q.c";
_CORTOS_PG_TABLES="$_CORTOS_SRC_DIR/setup_page_tables.s";
_LINKER_SCRIPT="$_CORTOS_SRC_DIR/LinkerScript.txt";

_PT="$AJIT_MINIMAL_PRINTF_TIMER";
_AAR_MT="$AJIT_PROJECT_HOME/tools/ajit_access_routines_mt";
_AAR="$AJIT_ACCESS_ROUTINES";



# genVmapAsm ${_CORTOS_VMAP} ${_CORTOS_PG_TABLES};
#  -s $_CORTOS_PG_TABLES \

# NOTE: the use of `-U` to enable uclibc
compileToSparcUclibc.py \
  -V ${_CORTOS_VMAP} \
  -I ${AJIT_UCLIBC_HEADERS_DIR} \
  -I ${AJIT_LIBGCC_INSTALL_DIR}/include \
  -I . \
  -I ${_CORTOS_SRC_DIR} \
  -I ${_AAR_MT}/include \
  -I ${_PT}/include \
  -s ${_CORTOS_INIT_00} \
  -s ${_CORTOS_ASM} \
  -s ${_CORTOS_TRAP_HANDLER} \
  -s ${_CORTOS_LOCK_UNLOCK} \
  -s ${_CORTOS_RES_LOCK_UNLOCK} \
  -s ${_CORTOS_Q_LOCK_UNLOCK} \
  -c main.c \
  -c ${_CORTOS_MSG_QUEUE} \
  -c ${_CORTOS_C} \
  -c ${_CORTOS_PRINTF} \
  -c ${_CORTOS_PRINTF_CVT} \
  -C ${_AAR}/src \
  -N ${_MAIN} \
  -L ${_LINKER_SCRIPT} \
  -D AJIT \
  -U;



# # STEP 3: Read elf to generate mmap file.
# echo "\nNOW READING ELF...\n";
#
# # generate the mmap file for deployment on the processor
# # NOTE: the use of `./pt_load_sections.py` script to extract loadable modules
# sparc-linux-readelf \
#   `pt_load_sections.py ${_MAIN}.elf` \
#   ${_MAIN}.elf \
#   | \
#   grep 0x > ${_MAIN}.hex;
#
# generateMemoryMap_Byte ${_MAIN}.hex > ${_MAIN}.mmap;
#
# remapMemmap $_VMAP ${_MAIN}.mmap ${_MAIN}.mmap.remapped;

