set(DEPENDENT_MP_BIN2HEXPWM_20KHz_default_KDm6pjEH "c:/Program Files/Microchip/xc32/v5.00/bin/xc32-bin2hex.exe")
set(DEPENDENT_DEPENDENT_TARGET_ELFPWM_20KHz_default_KDm6pjEH ${CMAKE_CURRENT_LIST_DIR}/../../../../out/PWM_20KHz/default.elf)
set(DEPENDENT_TARGET_DIRPWM_20KHz_default_KDm6pjEH ${CMAKE_CURRENT_LIST_DIR}/../../../../out/PWM_20KHz)
set(DEPENDENT_BYPRODUCTSPWM_20KHz_default_KDm6pjEH ${DEPENDENT_TARGET_DIRPWM_20KHz_default_KDm6pjEH}/${sourceFileNamePWM_20KHz_default_KDm6pjEH}.c)
add_custom_command(
    OUTPUT ${DEPENDENT_TARGET_DIRPWM_20KHz_default_KDm6pjEH}/${sourceFileNamePWM_20KHz_default_KDm6pjEH}.c
    COMMAND ${DEPENDENT_MP_BIN2HEXPWM_20KHz_default_KDm6pjEH} --image ${DEPENDENT_DEPENDENT_TARGET_ELFPWM_20KHz_default_KDm6pjEH} --image-generated-c ${sourceFileNamePWM_20KHz_default_KDm6pjEH}.c --image-generated-h ${sourceFileNamePWM_20KHz_default_KDm6pjEH}.h --image-copy-mode ${modePWM_20KHz_default_KDm6pjEH} --image-offset ${addressPWM_20KHz_default_KDm6pjEH} 
    WORKING_DIRECTORY ${DEPENDENT_TARGET_DIRPWM_20KHz_default_KDm6pjEH}
    DEPENDS ${DEPENDENT_DEPENDENT_TARGET_ELFPWM_20KHz_default_KDm6pjEH})
add_custom_target(
    dependent_produced_source_artifactPWM_20KHz_default_KDm6pjEH 
    DEPENDS ${DEPENDENT_TARGET_DIRPWM_20KHz_default_KDm6pjEH}/${sourceFileNamePWM_20KHz_default_KDm6pjEH}.c
    )
