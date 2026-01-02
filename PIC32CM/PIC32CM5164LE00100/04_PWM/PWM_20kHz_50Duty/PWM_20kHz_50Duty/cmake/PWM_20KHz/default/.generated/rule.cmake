# The following functions contains all the flags passed to the different build stages.

set(PACK_REPO_PATH "C:/Users/Administrator/.mchp_packs" CACHE PATH "Path to the root of a pack repository.")

function(PWM_20KHz_default_default_XC32_assemble_rule target)
    set(options
        "-g"
        "${ASSEMBLER_PRE}"
        "-mprocessor=32CM5164LE00100"
        "-Wa,--defsym=__MPLAB_BUILD=1${MP_EXTRA_AS_POST},--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--gdwarf-2,-I${CMAKE_CURRENT_SOURCE_DIR}/../../../PWM_20KHz.X"
        "-mdfp=${PACK_REPO_PATH}/Microchip/PIC32CM-LE_DFP/1.3.280")
    list(REMOVE_ITEM options "")
    target_compile_options(${target} PRIVATE "${options}")
    target_compile_definitions(${target} PRIVATE "__DEBUG=1")
    target_include_directories(${target} PRIVATE "${CMAKE_CURRENT_SOURCE_DIR}/../../../PWM_20KHz.X")
endfunction()
function(PWM_20KHz_default_default_XC32_assembleWithPreprocess_rule target)
    set(options
        "-x"
        "assembler-with-cpp"
        "-g"
        "${MP_EXTRA_AS_PRE}"
        "${DEBUGGER_NAME_AS_MACRO}"
        "-mdfp=${PACK_REPO_PATH}/Microchip/PIC32CM-LE_DFP/1.3.280"
        "-mprocessor=32CM5164LE00100"
        "-Wa,--defsym=__MPLAB_BUILD=1${MP_EXTRA_AS_POST},--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,-I${CMAKE_CURRENT_SOURCE_DIR}/../../../PWM_20KHz.X")
    list(REMOVE_ITEM options "")
    target_compile_options(${target} PRIVATE "${options}")
    target_compile_definitions(${target}
        PRIVATE "__DEBUG=1"
        PRIVATE "XPRJ_default=default")
    target_include_directories(${target} PRIVATE "${CMAKE_CURRENT_SOURCE_DIR}/../../../PWM_20KHz.X")
endfunction()
function(PWM_20KHz_default_default_XC32_compile_rule target)
    set(options
        "-g"
        "${CC_PRE}"
        "-x"
        "c"
        "-c"
        "-mprocessor=32CM5164LE00100"
        "-ffunction-sections"
        "-fdata-sections"
        "-O1"
        "-fno-common"
        "-mdfp=${PACK_REPO_PATH}/Microchip/PIC32CM-LE_DFP/1.3.280")
    list(REMOVE_ITEM options "")
    target_compile_options(${target} PRIVATE "${options}")
    target_compile_definitions(${target}
        PRIVATE "__DEBUG"
        PRIVATE "XPRJ_default=default")
    target_include_directories(${target}
        PRIVATE "${CMAKE_CURRENT_SOURCE_DIR}/../../../src"
        PRIVATE "${CMAKE_CURRENT_SOURCE_DIR}/../../../src/config/default"
        PRIVATE "src/packs/CMSIS"
        PRIVATE "src/packs/CMSIS/CMSIS/Core/Include"
        PRIVATE "${CMAKE_CURRENT_SOURCE_DIR}/../../../src/packs/PIC32CM5164LE00100_DFP"
        PRIVATE "${CMAKE_CURRENT_SOURCE_DIR}/../../../PWM_20KHz.X")
endfunction()
function(PWM_20KHz_default_default_XC32_compile_cpp_rule target)
    set(options
        "-g"
        "${CC_PRE}"
        "${DEBUGGER_NAME_AS_MACRO}"
        "-mprocessor=32CM5164LE00100"
        "-frtti"
        "-fexceptions"
        "-fno-check-new"
        "-fenforce-eh-specs"
        "-ffunction-sections"
        "-O1"
        "-fno-common"
        "-mdfp=${PACK_REPO_PATH}/Microchip/PIC32CM-LE_DFP/1.3.280")
    list(REMOVE_ITEM options "")
    target_compile_options(${target} PRIVATE "${options}")
    target_compile_definitions(${target}
        PRIVATE "__DEBUG"
        PRIVATE "XPRJ_default=default")
    target_include_directories(${target}
        PRIVATE "${CMAKE_CURRENT_SOURCE_DIR}/../../../src"
        PRIVATE "${CMAKE_CURRENT_SOURCE_DIR}/../../../src/config/default"
        PRIVATE "src/packs/CMSIS"
        PRIVATE "src/packs/CMSIS/CMSIS/Core/Include"
        PRIVATE "${CMAKE_CURRENT_SOURCE_DIR}/../../../src/packs/PIC32CM5164LE00100_DFP"
        PRIVATE "${CMAKE_CURRENT_SOURCE_DIR}/../../../PWM_20KHz.X")
endfunction()
function(PWM_20KHz_default_dependentObject_rule target)
    set(options
        "-mprocessor=32CM5164LE00100"
        "-mdfp=${PACK_REPO_PATH}/Microchip/PIC32CM-LE_DFP/1.3.280")
    list(REMOVE_ITEM options "")
    target_compile_options(${target} PRIVATE "${options}")
endfunction()
function(PWM_20KHz_default_link_rule target)
    set(options
        "-g"
        "${MP_EXTRA_LD_PRE}"
        "${DEBUGGER_OPTION_TO_LINKER}"
        "${DEBUGGER_NAME_AS_MACRO}"
        "-mprocessor=32CM5164LE00100"
        "-mno-device-startup-code"
        "-Wl,--defsym=__MPLAB_BUILD=1${MP_EXTRA_LD_POST},--script=${PWM_20KHz_default_LINKER_SCRIPT},--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=_min_heap_size=512,--gc-sections,-L${CMAKE_CURRENT_SOURCE_DIR}/../../../PWM_20KHz.X,--memorysummary,memoryfile.xml"
        "-mdfp=${PACK_REPO_PATH}/Microchip/PIC32CM-LE_DFP/1.3.280")
    list(REMOVE_ITEM options "")
    target_link_options(${target} PRIVATE "${options}")
    target_compile_definitions(${target} PRIVATE "XPRJ_default=default")
endfunction()
function(PWM_20KHz_default_bin2hex_rule target)
    add_custom_target(
        PWM_20KHz_default_Bin2Hex ALL
        COMMAND ${MP_BIN2HEX} ${PWM_20KHz_default_image_name}
        WORKING_DIRECTORY ${PWM_20KHz_default_output_dir}
        BYPRODUCTS "${PWM_20KHz_default_output_dir}/${PWM_20KHz_default_image_base_name}.hex"
        COMMENT "Convert build file to .hex")
    add_dependencies(PWM_20KHz_default_Bin2Hex ${target})
endfunction()
