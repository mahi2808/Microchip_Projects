#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-pic32cm_le00_curiosity_pro.mk)" "nbproject/Makefile-local-pic32cm_le00_curiosity_pro.mk"
include nbproject/Makefile-local-pic32cm_le00_curiosity_pro.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=pic32cm_le00_curiosity_pro
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/pic32cm_le00_curiosity_pro.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/pic32cm_le00_curiosity_pro.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../src/config/pic32cm_le00_curiosity_pro/peripheral/adc/plib_adc.c ../src/config/pic32cm_le00_curiosity_pro/peripheral/clock/plib_clock.c ../src/config/pic32cm_le00_curiosity_pro/peripheral/evsys/plib_evsys.c ../src/config/pic32cm_le00_curiosity_pro/peripheral/nvic/plib_nvic.c ../src/config/pic32cm_le00_curiosity_pro/peripheral/nvmctrl/plib_nvmctrl.c ../src/config/pic32cm_le00_curiosity_pro/peripheral/opamp/plib_opamp.c ../src/config/pic32cm_le00_curiosity_pro/peripheral/pm/plib_pm.c ../src/config/pic32cm_le00_curiosity_pro/peripheral/port/plib_port.c ../src/config/pic32cm_le00_curiosity_pro/peripheral/sercom/usart/plib_sercom3_usart.c ../src/config/pic32cm_le00_curiosity_pro/peripheral/systick/plib_systick.c ../src/config/pic32cm_le00_curiosity_pro/stdio/xc32_monitor.c ../src/config/pic32cm_le00_curiosity_pro/initialization.c ../src/config/pic32cm_le00_curiosity_pro/interrupts.c ../src/config/pic32cm_le00_curiosity_pro/exceptions.c ../src/config/pic32cm_le00_curiosity_pro/startup_xc32.c ../src/config/pic32cm_le00_curiosity_pro/libc_syscalls.c ../src/main.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1415717580/plib_adc.o ${OBJECTDIR}/_ext/1002138530/plib_clock.o ${OBJECTDIR}/_ext/1004288016/plib_evsys.o ${OBJECTDIR}/_ext/937167154/plib_nvic.o ${OBJECTDIR}/_ext/1855451612/plib_nvmctrl.o ${OBJECTDIR}/_ext/1013326807/plib_opamp.o ${OBJECTDIR}/_ext/876951831/plib_pm.o ${OBJECTDIR}/_ext/937114003/plib_port.o ${OBJECTDIR}/_ext/935292285/plib_sercom3_usart.o ${OBJECTDIR}/_ext/1620976514/plib_systick.o ${OBJECTDIR}/_ext/309090558/xc32_monitor.o ${OBJECTDIR}/_ext/1406609736/initialization.o ${OBJECTDIR}/_ext/1406609736/interrupts.o ${OBJECTDIR}/_ext/1406609736/exceptions.o ${OBJECTDIR}/_ext/1406609736/startup_xc32.o ${OBJECTDIR}/_ext/1406609736/libc_syscalls.o ${OBJECTDIR}/_ext/1360937237/main.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1415717580/plib_adc.o.d ${OBJECTDIR}/_ext/1002138530/plib_clock.o.d ${OBJECTDIR}/_ext/1004288016/plib_evsys.o.d ${OBJECTDIR}/_ext/937167154/plib_nvic.o.d ${OBJECTDIR}/_ext/1855451612/plib_nvmctrl.o.d ${OBJECTDIR}/_ext/1013326807/plib_opamp.o.d ${OBJECTDIR}/_ext/876951831/plib_pm.o.d ${OBJECTDIR}/_ext/937114003/plib_port.o.d ${OBJECTDIR}/_ext/935292285/plib_sercom3_usart.o.d ${OBJECTDIR}/_ext/1620976514/plib_systick.o.d ${OBJECTDIR}/_ext/309090558/xc32_monitor.o.d ${OBJECTDIR}/_ext/1406609736/initialization.o.d ${OBJECTDIR}/_ext/1406609736/interrupts.o.d ${OBJECTDIR}/_ext/1406609736/exceptions.o.d ${OBJECTDIR}/_ext/1406609736/startup_xc32.o.d ${OBJECTDIR}/_ext/1406609736/libc_syscalls.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1415717580/plib_adc.o ${OBJECTDIR}/_ext/1002138530/plib_clock.o ${OBJECTDIR}/_ext/1004288016/plib_evsys.o ${OBJECTDIR}/_ext/937167154/plib_nvic.o ${OBJECTDIR}/_ext/1855451612/plib_nvmctrl.o ${OBJECTDIR}/_ext/1013326807/plib_opamp.o ${OBJECTDIR}/_ext/876951831/plib_pm.o ${OBJECTDIR}/_ext/937114003/plib_port.o ${OBJECTDIR}/_ext/935292285/plib_sercom3_usart.o ${OBJECTDIR}/_ext/1620976514/plib_systick.o ${OBJECTDIR}/_ext/309090558/xc32_monitor.o ${OBJECTDIR}/_ext/1406609736/initialization.o ${OBJECTDIR}/_ext/1406609736/interrupts.o ${OBJECTDIR}/_ext/1406609736/exceptions.o ${OBJECTDIR}/_ext/1406609736/startup_xc32.o ${OBJECTDIR}/_ext/1406609736/libc_syscalls.o ${OBJECTDIR}/_ext/1360937237/main.o

# Source Files
SOURCEFILES=../src/config/pic32cm_le00_curiosity_pro/peripheral/adc/plib_adc.c ../src/config/pic32cm_le00_curiosity_pro/peripheral/clock/plib_clock.c ../src/config/pic32cm_le00_curiosity_pro/peripheral/evsys/plib_evsys.c ../src/config/pic32cm_le00_curiosity_pro/peripheral/nvic/plib_nvic.c ../src/config/pic32cm_le00_curiosity_pro/peripheral/nvmctrl/plib_nvmctrl.c ../src/config/pic32cm_le00_curiosity_pro/peripheral/opamp/plib_opamp.c ../src/config/pic32cm_le00_curiosity_pro/peripheral/pm/plib_pm.c ../src/config/pic32cm_le00_curiosity_pro/peripheral/port/plib_port.c ../src/config/pic32cm_le00_curiosity_pro/peripheral/sercom/usart/plib_sercom3_usart.c ../src/config/pic32cm_le00_curiosity_pro/peripheral/systick/plib_systick.c ../src/config/pic32cm_le00_curiosity_pro/stdio/xc32_monitor.c ../src/config/pic32cm_le00_curiosity_pro/initialization.c ../src/config/pic32cm_le00_curiosity_pro/interrupts.c ../src/config/pic32cm_le00_curiosity_pro/exceptions.c ../src/config/pic32cm_le00_curiosity_pro/startup_xc32.c ../src/config/pic32cm_le00_curiosity_pro/libc_syscalls.c ../src/main.c



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-pic32cm_le00_curiosity_pro.mk ${DISTDIR}/pic32cm_le00_curiosity_pro.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32CM5164LE00100
MP_LINKER_FILE_OPTION=,--script="..\src\config\pic32cm_le00_curiosity_pro\PIC32CM5164LE00100.ld"
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1415717580/plib_adc.o: ../src/config/pic32cm_le00_curiosity_pro/peripheral/adc/plib_adc.c  .generated_files/flags/pic32cm_le00_curiosity_pro/3b33b09f72ed8de9a25e76b4b11e7a50cdaa41c4 .generated_files/flags/pic32cm_le00_curiosity_pro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1415717580" 
	@${RM} ${OBJECTDIR}/_ext/1415717580/plib_adc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1415717580/plib_adc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_le00_curiosity_pro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5164LE00100_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1415717580/plib_adc.o.d" -o ${OBJECTDIR}/_ext/1415717580/plib_adc.o ../src/config/pic32cm_le00_curiosity_pro/peripheral/adc/plib_adc.c    -DXPRJ_pic32cm_le00_curiosity_pro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1002138530/plib_clock.o: ../src/config/pic32cm_le00_curiosity_pro/peripheral/clock/plib_clock.c  .generated_files/flags/pic32cm_le00_curiosity_pro/348589dcfa5c7fc375cacacf717ca93a3582829d .generated_files/flags/pic32cm_le00_curiosity_pro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1002138530" 
	@${RM} ${OBJECTDIR}/_ext/1002138530/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/1002138530/plib_clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_le00_curiosity_pro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5164LE00100_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1002138530/plib_clock.o.d" -o ${OBJECTDIR}/_ext/1002138530/plib_clock.o ../src/config/pic32cm_le00_curiosity_pro/peripheral/clock/plib_clock.c    -DXPRJ_pic32cm_le00_curiosity_pro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1004288016/plib_evsys.o: ../src/config/pic32cm_le00_curiosity_pro/peripheral/evsys/plib_evsys.c  .generated_files/flags/pic32cm_le00_curiosity_pro/29319e590e68bb9e2f88678fdd4280c04373d6ef .generated_files/flags/pic32cm_le00_curiosity_pro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1004288016" 
	@${RM} ${OBJECTDIR}/_ext/1004288016/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/1004288016/plib_evsys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_le00_curiosity_pro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5164LE00100_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1004288016/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/1004288016/plib_evsys.o ../src/config/pic32cm_le00_curiosity_pro/peripheral/evsys/plib_evsys.c    -DXPRJ_pic32cm_le00_curiosity_pro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/937167154/plib_nvic.o: ../src/config/pic32cm_le00_curiosity_pro/peripheral/nvic/plib_nvic.c  .generated_files/flags/pic32cm_le00_curiosity_pro/c56e6bdd070b06bd67fa580931a202c47ba8ac71 .generated_files/flags/pic32cm_le00_curiosity_pro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/937167154" 
	@${RM} ${OBJECTDIR}/_ext/937167154/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/937167154/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_le00_curiosity_pro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5164LE00100_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/937167154/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/937167154/plib_nvic.o ../src/config/pic32cm_le00_curiosity_pro/peripheral/nvic/plib_nvic.c    -DXPRJ_pic32cm_le00_curiosity_pro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1855451612/plib_nvmctrl.o: ../src/config/pic32cm_le00_curiosity_pro/peripheral/nvmctrl/plib_nvmctrl.c  .generated_files/flags/pic32cm_le00_curiosity_pro/c9e2231868a3780fa36621c35aa871294ebbc4fa .generated_files/flags/pic32cm_le00_curiosity_pro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1855451612" 
	@${RM} ${OBJECTDIR}/_ext/1855451612/plib_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1855451612/plib_nvmctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_le00_curiosity_pro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5164LE00100_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1855451612/plib_nvmctrl.o.d" -o ${OBJECTDIR}/_ext/1855451612/plib_nvmctrl.o ../src/config/pic32cm_le00_curiosity_pro/peripheral/nvmctrl/plib_nvmctrl.c    -DXPRJ_pic32cm_le00_curiosity_pro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1013326807/plib_opamp.o: ../src/config/pic32cm_le00_curiosity_pro/peripheral/opamp/plib_opamp.c  .generated_files/flags/pic32cm_le00_curiosity_pro/e9a328b8deae3b851825e05104f9a628e7c09fcb .generated_files/flags/pic32cm_le00_curiosity_pro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1013326807" 
	@${RM} ${OBJECTDIR}/_ext/1013326807/plib_opamp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1013326807/plib_opamp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_le00_curiosity_pro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5164LE00100_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1013326807/plib_opamp.o.d" -o ${OBJECTDIR}/_ext/1013326807/plib_opamp.o ../src/config/pic32cm_le00_curiosity_pro/peripheral/opamp/plib_opamp.c    -DXPRJ_pic32cm_le00_curiosity_pro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/876951831/plib_pm.o: ../src/config/pic32cm_le00_curiosity_pro/peripheral/pm/plib_pm.c  .generated_files/flags/pic32cm_le00_curiosity_pro/69785b25a559842c4debbd43422b1878d5444fcd .generated_files/flags/pic32cm_le00_curiosity_pro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/876951831" 
	@${RM} ${OBJECTDIR}/_ext/876951831/plib_pm.o.d 
	@${RM} ${OBJECTDIR}/_ext/876951831/plib_pm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_le00_curiosity_pro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5164LE00100_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/876951831/plib_pm.o.d" -o ${OBJECTDIR}/_ext/876951831/plib_pm.o ../src/config/pic32cm_le00_curiosity_pro/peripheral/pm/plib_pm.c    -DXPRJ_pic32cm_le00_curiosity_pro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/937114003/plib_port.o: ../src/config/pic32cm_le00_curiosity_pro/peripheral/port/plib_port.c  .generated_files/flags/pic32cm_le00_curiosity_pro/a6077a562bc5cc00978691f2f8dbbea337d9ab6c .generated_files/flags/pic32cm_le00_curiosity_pro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/937114003" 
	@${RM} ${OBJECTDIR}/_ext/937114003/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/937114003/plib_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_le00_curiosity_pro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5164LE00100_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/937114003/plib_port.o.d" -o ${OBJECTDIR}/_ext/937114003/plib_port.o ../src/config/pic32cm_le00_curiosity_pro/peripheral/port/plib_port.c    -DXPRJ_pic32cm_le00_curiosity_pro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/935292285/plib_sercom3_usart.o: ../src/config/pic32cm_le00_curiosity_pro/peripheral/sercom/usart/plib_sercom3_usart.c  .generated_files/flags/pic32cm_le00_curiosity_pro/c93658fc81b6e67a55fb95d6d855aab73f143367 .generated_files/flags/pic32cm_le00_curiosity_pro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935292285" 
	@${RM} ${OBJECTDIR}/_ext/935292285/plib_sercom3_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/935292285/plib_sercom3_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_le00_curiosity_pro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5164LE00100_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/935292285/plib_sercom3_usart.o.d" -o ${OBJECTDIR}/_ext/935292285/plib_sercom3_usart.o ../src/config/pic32cm_le00_curiosity_pro/peripheral/sercom/usart/plib_sercom3_usart.c    -DXPRJ_pic32cm_le00_curiosity_pro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1620976514/plib_systick.o: ../src/config/pic32cm_le00_curiosity_pro/peripheral/systick/plib_systick.c  .generated_files/flags/pic32cm_le00_curiosity_pro/c12e50833cd99cc965f5b261d4f78eb519efc462 .generated_files/flags/pic32cm_le00_curiosity_pro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1620976514" 
	@${RM} ${OBJECTDIR}/_ext/1620976514/plib_systick.o.d 
	@${RM} ${OBJECTDIR}/_ext/1620976514/plib_systick.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_le00_curiosity_pro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5164LE00100_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1620976514/plib_systick.o.d" -o ${OBJECTDIR}/_ext/1620976514/plib_systick.o ../src/config/pic32cm_le00_curiosity_pro/peripheral/systick/plib_systick.c    -DXPRJ_pic32cm_le00_curiosity_pro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/309090558/xc32_monitor.o: ../src/config/pic32cm_le00_curiosity_pro/stdio/xc32_monitor.c  .generated_files/flags/pic32cm_le00_curiosity_pro/b8c80d0d2e64ffe6cd51878ce755fc937ba6f44a .generated_files/flags/pic32cm_le00_curiosity_pro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/309090558" 
	@${RM} ${OBJECTDIR}/_ext/309090558/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/309090558/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_le00_curiosity_pro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5164LE00100_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/309090558/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/309090558/xc32_monitor.o ../src/config/pic32cm_le00_curiosity_pro/stdio/xc32_monitor.c    -DXPRJ_pic32cm_le00_curiosity_pro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1406609736/initialization.o: ../src/config/pic32cm_le00_curiosity_pro/initialization.c  .generated_files/flags/pic32cm_le00_curiosity_pro/8ffd8a98912e3998d607b1f8fd919cbf6cd951d7 .generated_files/flags/pic32cm_le00_curiosity_pro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1406609736" 
	@${RM} ${OBJECTDIR}/_ext/1406609736/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1406609736/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_le00_curiosity_pro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5164LE00100_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1406609736/initialization.o.d" -o ${OBJECTDIR}/_ext/1406609736/initialization.o ../src/config/pic32cm_le00_curiosity_pro/initialization.c    -DXPRJ_pic32cm_le00_curiosity_pro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1406609736/interrupts.o: ../src/config/pic32cm_le00_curiosity_pro/interrupts.c  .generated_files/flags/pic32cm_le00_curiosity_pro/b75b15745103891778d6d04d2ee286e10171d612 .generated_files/flags/pic32cm_le00_curiosity_pro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1406609736" 
	@${RM} ${OBJECTDIR}/_ext/1406609736/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1406609736/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_le00_curiosity_pro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5164LE00100_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1406609736/interrupts.o.d" -o ${OBJECTDIR}/_ext/1406609736/interrupts.o ../src/config/pic32cm_le00_curiosity_pro/interrupts.c    -DXPRJ_pic32cm_le00_curiosity_pro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1406609736/exceptions.o: ../src/config/pic32cm_le00_curiosity_pro/exceptions.c  .generated_files/flags/pic32cm_le00_curiosity_pro/411e039b3250608ee7888c5ddbc44912f93ad314 .generated_files/flags/pic32cm_le00_curiosity_pro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1406609736" 
	@${RM} ${OBJECTDIR}/_ext/1406609736/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1406609736/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_le00_curiosity_pro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5164LE00100_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1406609736/exceptions.o.d" -o ${OBJECTDIR}/_ext/1406609736/exceptions.o ../src/config/pic32cm_le00_curiosity_pro/exceptions.c    -DXPRJ_pic32cm_le00_curiosity_pro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1406609736/startup_xc32.o: ../src/config/pic32cm_le00_curiosity_pro/startup_xc32.c  .generated_files/flags/pic32cm_le00_curiosity_pro/bb89dab71050230191cc5a556da8cb24e290e99b .generated_files/flags/pic32cm_le00_curiosity_pro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1406609736" 
	@${RM} ${OBJECTDIR}/_ext/1406609736/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1406609736/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_le00_curiosity_pro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5164LE00100_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1406609736/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/1406609736/startup_xc32.o ../src/config/pic32cm_le00_curiosity_pro/startup_xc32.c    -DXPRJ_pic32cm_le00_curiosity_pro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1406609736/libc_syscalls.o: ../src/config/pic32cm_le00_curiosity_pro/libc_syscalls.c  .generated_files/flags/pic32cm_le00_curiosity_pro/94ae7aa87740372aceadd85c757187b3ebe35562 .generated_files/flags/pic32cm_le00_curiosity_pro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1406609736" 
	@${RM} ${OBJECTDIR}/_ext/1406609736/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/1406609736/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_le00_curiosity_pro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5164LE00100_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1406609736/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/1406609736/libc_syscalls.o ../src/config/pic32cm_le00_curiosity_pro/libc_syscalls.c    -DXPRJ_pic32cm_le00_curiosity_pro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/pic32cm_le00_curiosity_pro/d47def0a528c90e574febd505654d5c456bdc6c4 .generated_files/flags/pic32cm_le00_curiosity_pro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_le00_curiosity_pro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5164LE00100_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_pic32cm_le00_curiosity_pro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
else
${OBJECTDIR}/_ext/1415717580/plib_adc.o: ../src/config/pic32cm_le00_curiosity_pro/peripheral/adc/plib_adc.c  .generated_files/flags/pic32cm_le00_curiosity_pro/92da1fb5c33609fa8c3828d1f5304907350c506f .generated_files/flags/pic32cm_le00_curiosity_pro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1415717580" 
	@${RM} ${OBJECTDIR}/_ext/1415717580/plib_adc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1415717580/plib_adc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_le00_curiosity_pro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5164LE00100_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1415717580/plib_adc.o.d" -o ${OBJECTDIR}/_ext/1415717580/plib_adc.o ../src/config/pic32cm_le00_curiosity_pro/peripheral/adc/plib_adc.c    -DXPRJ_pic32cm_le00_curiosity_pro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1002138530/plib_clock.o: ../src/config/pic32cm_le00_curiosity_pro/peripheral/clock/plib_clock.c  .generated_files/flags/pic32cm_le00_curiosity_pro/887d0ccac454c3351d9390cfd7f919ccfded9653 .generated_files/flags/pic32cm_le00_curiosity_pro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1002138530" 
	@${RM} ${OBJECTDIR}/_ext/1002138530/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/1002138530/plib_clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_le00_curiosity_pro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5164LE00100_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1002138530/plib_clock.o.d" -o ${OBJECTDIR}/_ext/1002138530/plib_clock.o ../src/config/pic32cm_le00_curiosity_pro/peripheral/clock/plib_clock.c    -DXPRJ_pic32cm_le00_curiosity_pro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1004288016/plib_evsys.o: ../src/config/pic32cm_le00_curiosity_pro/peripheral/evsys/plib_evsys.c  .generated_files/flags/pic32cm_le00_curiosity_pro/72b46cb322688439917e6356655decd2ccfa3c9f .generated_files/flags/pic32cm_le00_curiosity_pro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1004288016" 
	@${RM} ${OBJECTDIR}/_ext/1004288016/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/1004288016/plib_evsys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_le00_curiosity_pro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5164LE00100_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1004288016/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/1004288016/plib_evsys.o ../src/config/pic32cm_le00_curiosity_pro/peripheral/evsys/plib_evsys.c    -DXPRJ_pic32cm_le00_curiosity_pro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/937167154/plib_nvic.o: ../src/config/pic32cm_le00_curiosity_pro/peripheral/nvic/plib_nvic.c  .generated_files/flags/pic32cm_le00_curiosity_pro/68a444047cd501ab83e28bec4726045d0a8335e4 .generated_files/flags/pic32cm_le00_curiosity_pro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/937167154" 
	@${RM} ${OBJECTDIR}/_ext/937167154/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/937167154/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_le00_curiosity_pro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5164LE00100_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/937167154/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/937167154/plib_nvic.o ../src/config/pic32cm_le00_curiosity_pro/peripheral/nvic/plib_nvic.c    -DXPRJ_pic32cm_le00_curiosity_pro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1855451612/plib_nvmctrl.o: ../src/config/pic32cm_le00_curiosity_pro/peripheral/nvmctrl/plib_nvmctrl.c  .generated_files/flags/pic32cm_le00_curiosity_pro/1fc4393ac6a4dc921609cecfc5d2020c7daf7633 .generated_files/flags/pic32cm_le00_curiosity_pro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1855451612" 
	@${RM} ${OBJECTDIR}/_ext/1855451612/plib_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1855451612/plib_nvmctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_le00_curiosity_pro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5164LE00100_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1855451612/plib_nvmctrl.o.d" -o ${OBJECTDIR}/_ext/1855451612/plib_nvmctrl.o ../src/config/pic32cm_le00_curiosity_pro/peripheral/nvmctrl/plib_nvmctrl.c    -DXPRJ_pic32cm_le00_curiosity_pro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1013326807/plib_opamp.o: ../src/config/pic32cm_le00_curiosity_pro/peripheral/opamp/plib_opamp.c  .generated_files/flags/pic32cm_le00_curiosity_pro/472805885532044a4a36260aa5dedf1c5d7b83ec .generated_files/flags/pic32cm_le00_curiosity_pro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1013326807" 
	@${RM} ${OBJECTDIR}/_ext/1013326807/plib_opamp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1013326807/plib_opamp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_le00_curiosity_pro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5164LE00100_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1013326807/plib_opamp.o.d" -o ${OBJECTDIR}/_ext/1013326807/plib_opamp.o ../src/config/pic32cm_le00_curiosity_pro/peripheral/opamp/plib_opamp.c    -DXPRJ_pic32cm_le00_curiosity_pro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/876951831/plib_pm.o: ../src/config/pic32cm_le00_curiosity_pro/peripheral/pm/plib_pm.c  .generated_files/flags/pic32cm_le00_curiosity_pro/a29db475affaceda53b2fe9aa67033e74c4d25a9 .generated_files/flags/pic32cm_le00_curiosity_pro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/876951831" 
	@${RM} ${OBJECTDIR}/_ext/876951831/plib_pm.o.d 
	@${RM} ${OBJECTDIR}/_ext/876951831/plib_pm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_le00_curiosity_pro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5164LE00100_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/876951831/plib_pm.o.d" -o ${OBJECTDIR}/_ext/876951831/plib_pm.o ../src/config/pic32cm_le00_curiosity_pro/peripheral/pm/plib_pm.c    -DXPRJ_pic32cm_le00_curiosity_pro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/937114003/plib_port.o: ../src/config/pic32cm_le00_curiosity_pro/peripheral/port/plib_port.c  .generated_files/flags/pic32cm_le00_curiosity_pro/75b5c5fa963baa58bd2aa449993f3e0f04acda12 .generated_files/flags/pic32cm_le00_curiosity_pro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/937114003" 
	@${RM} ${OBJECTDIR}/_ext/937114003/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/937114003/plib_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_le00_curiosity_pro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5164LE00100_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/937114003/plib_port.o.d" -o ${OBJECTDIR}/_ext/937114003/plib_port.o ../src/config/pic32cm_le00_curiosity_pro/peripheral/port/plib_port.c    -DXPRJ_pic32cm_le00_curiosity_pro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/935292285/plib_sercom3_usart.o: ../src/config/pic32cm_le00_curiosity_pro/peripheral/sercom/usart/plib_sercom3_usart.c  .generated_files/flags/pic32cm_le00_curiosity_pro/758fefc6ccbdb9eaa21a47e6b13169332d8519d1 .generated_files/flags/pic32cm_le00_curiosity_pro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/935292285" 
	@${RM} ${OBJECTDIR}/_ext/935292285/plib_sercom3_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/935292285/plib_sercom3_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_le00_curiosity_pro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5164LE00100_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/935292285/plib_sercom3_usart.o.d" -o ${OBJECTDIR}/_ext/935292285/plib_sercom3_usart.o ../src/config/pic32cm_le00_curiosity_pro/peripheral/sercom/usart/plib_sercom3_usart.c    -DXPRJ_pic32cm_le00_curiosity_pro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1620976514/plib_systick.o: ../src/config/pic32cm_le00_curiosity_pro/peripheral/systick/plib_systick.c  .generated_files/flags/pic32cm_le00_curiosity_pro/d242526a6e4aaaca4e3cbcc427479de4f1ba7e47 .generated_files/flags/pic32cm_le00_curiosity_pro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1620976514" 
	@${RM} ${OBJECTDIR}/_ext/1620976514/plib_systick.o.d 
	@${RM} ${OBJECTDIR}/_ext/1620976514/plib_systick.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_le00_curiosity_pro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5164LE00100_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1620976514/plib_systick.o.d" -o ${OBJECTDIR}/_ext/1620976514/plib_systick.o ../src/config/pic32cm_le00_curiosity_pro/peripheral/systick/plib_systick.c    -DXPRJ_pic32cm_le00_curiosity_pro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/309090558/xc32_monitor.o: ../src/config/pic32cm_le00_curiosity_pro/stdio/xc32_monitor.c  .generated_files/flags/pic32cm_le00_curiosity_pro/ca392428bf68fcd14c7bb17bde28b0eb5c95bc24 .generated_files/flags/pic32cm_le00_curiosity_pro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/309090558" 
	@${RM} ${OBJECTDIR}/_ext/309090558/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/309090558/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_le00_curiosity_pro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5164LE00100_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/309090558/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/309090558/xc32_monitor.o ../src/config/pic32cm_le00_curiosity_pro/stdio/xc32_monitor.c    -DXPRJ_pic32cm_le00_curiosity_pro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1406609736/initialization.o: ../src/config/pic32cm_le00_curiosity_pro/initialization.c  .generated_files/flags/pic32cm_le00_curiosity_pro/8702036491ea3bfaa5cdcdad47ad83822bfe5d0a .generated_files/flags/pic32cm_le00_curiosity_pro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1406609736" 
	@${RM} ${OBJECTDIR}/_ext/1406609736/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1406609736/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_le00_curiosity_pro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5164LE00100_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1406609736/initialization.o.d" -o ${OBJECTDIR}/_ext/1406609736/initialization.o ../src/config/pic32cm_le00_curiosity_pro/initialization.c    -DXPRJ_pic32cm_le00_curiosity_pro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1406609736/interrupts.o: ../src/config/pic32cm_le00_curiosity_pro/interrupts.c  .generated_files/flags/pic32cm_le00_curiosity_pro/1976c4a2e8cc06aec48a0c2d43af111ba0a4a862 .generated_files/flags/pic32cm_le00_curiosity_pro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1406609736" 
	@${RM} ${OBJECTDIR}/_ext/1406609736/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1406609736/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_le00_curiosity_pro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5164LE00100_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1406609736/interrupts.o.d" -o ${OBJECTDIR}/_ext/1406609736/interrupts.o ../src/config/pic32cm_le00_curiosity_pro/interrupts.c    -DXPRJ_pic32cm_le00_curiosity_pro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1406609736/exceptions.o: ../src/config/pic32cm_le00_curiosity_pro/exceptions.c  .generated_files/flags/pic32cm_le00_curiosity_pro/10af28539ad40853b0dfade7e41018f7038ccb44 .generated_files/flags/pic32cm_le00_curiosity_pro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1406609736" 
	@${RM} ${OBJECTDIR}/_ext/1406609736/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1406609736/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_le00_curiosity_pro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5164LE00100_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1406609736/exceptions.o.d" -o ${OBJECTDIR}/_ext/1406609736/exceptions.o ../src/config/pic32cm_le00_curiosity_pro/exceptions.c    -DXPRJ_pic32cm_le00_curiosity_pro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1406609736/startup_xc32.o: ../src/config/pic32cm_le00_curiosity_pro/startup_xc32.c  .generated_files/flags/pic32cm_le00_curiosity_pro/54d78510ac7bdae6e1cc88b4e475cab146daedef .generated_files/flags/pic32cm_le00_curiosity_pro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1406609736" 
	@${RM} ${OBJECTDIR}/_ext/1406609736/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1406609736/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_le00_curiosity_pro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5164LE00100_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1406609736/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/1406609736/startup_xc32.o ../src/config/pic32cm_le00_curiosity_pro/startup_xc32.c    -DXPRJ_pic32cm_le00_curiosity_pro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1406609736/libc_syscalls.o: ../src/config/pic32cm_le00_curiosity_pro/libc_syscalls.c  .generated_files/flags/pic32cm_le00_curiosity_pro/c543cfc34adc98f02d062f575b903b8579ea9008 .generated_files/flags/pic32cm_le00_curiosity_pro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1406609736" 
	@${RM} ${OBJECTDIR}/_ext/1406609736/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/1406609736/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_le00_curiosity_pro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5164LE00100_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1406609736/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/1406609736/libc_syscalls.o ../src/config/pic32cm_le00_curiosity_pro/libc_syscalls.c    -DXPRJ_pic32cm_le00_curiosity_pro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/pic32cm_le00_curiosity_pro/c82c6eb690026c4429fad462d592fcb5310d28a1 .generated_files/flags/pic32cm_le00_curiosity_pro/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/pic32cm_le00_curiosity_pro" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/PIC32CM5164LE00100_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_pic32cm_le00_curiosity_pro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/pic32cm_le00_curiosity_pro.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../src/config/pic32cm_le00_curiosity_pro/PIC32CM5164LE00100.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION)  -mno-device-startup-code -o ${DISTDIR}/pic32cm_le00_curiosity_pro.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_pic32cm_le00_curiosity_pro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=_min_heap_size=512,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
${DISTDIR}/pic32cm_le00_curiosity_pro.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../src/config/pic32cm_le00_curiosity_pro/PIC32CM5164LE00100.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -mno-device-startup-code -o ${DISTDIR}/pic32cm_le00_curiosity_pro.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_pic32cm_le00_curiosity_pro=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=512,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}\\xc32-bin2hex ${DISTDIR}/pic32cm_le00_curiosity_pro.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}
