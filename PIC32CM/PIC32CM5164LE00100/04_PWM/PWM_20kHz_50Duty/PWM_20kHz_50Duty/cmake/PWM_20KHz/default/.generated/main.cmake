# cmake files support debug production
include("${CMAKE_CURRENT_LIST_DIR}/rule.cmake")
include("${CMAKE_CURRENT_LIST_DIR}/file.cmake")

set(PWM_20KHz_default_library_list )

# Handle files with suffix s, for group default-XC32
if(PWM_20KHz_default_default_XC32_FILE_TYPE_assemble)
add_library(PWM_20KHz_default_default_XC32_assemble OBJECT ${PWM_20KHz_default_default_XC32_FILE_TYPE_assemble})
    PWM_20KHz_default_default_XC32_assemble_rule(PWM_20KHz_default_default_XC32_assemble)
    list(APPEND PWM_20KHz_default_library_list "$<TARGET_OBJECTS:PWM_20KHz_default_default_XC32_assemble>")

endif()

# Handle files with suffix S, for group default-XC32
if(PWM_20KHz_default_default_XC32_FILE_TYPE_assembleWithPreprocess)
add_library(PWM_20KHz_default_default_XC32_assembleWithPreprocess OBJECT ${PWM_20KHz_default_default_XC32_FILE_TYPE_assembleWithPreprocess})
    PWM_20KHz_default_default_XC32_assembleWithPreprocess_rule(PWM_20KHz_default_default_XC32_assembleWithPreprocess)
    list(APPEND PWM_20KHz_default_library_list "$<TARGET_OBJECTS:PWM_20KHz_default_default_XC32_assembleWithPreprocess>")

endif()

# Handle files with suffix [cC], for group default-XC32
if(PWM_20KHz_default_default_XC32_FILE_TYPE_compile)
add_library(PWM_20KHz_default_default_XC32_compile OBJECT ${PWM_20KHz_default_default_XC32_FILE_TYPE_compile})
    PWM_20KHz_default_default_XC32_compile_rule(PWM_20KHz_default_default_XC32_compile)
    list(APPEND PWM_20KHz_default_library_list "$<TARGET_OBJECTS:PWM_20KHz_default_default_XC32_compile>")

endif()

# Handle files with suffix cpp, for group default-XC32
if(PWM_20KHz_default_default_XC32_FILE_TYPE_compile_cpp)
add_library(PWM_20KHz_default_default_XC32_compile_cpp OBJECT ${PWM_20KHz_default_default_XC32_FILE_TYPE_compile_cpp})
    PWM_20KHz_default_default_XC32_compile_cpp_rule(PWM_20KHz_default_default_XC32_compile_cpp)
    list(APPEND PWM_20KHz_default_library_list "$<TARGET_OBJECTS:PWM_20KHz_default_default_XC32_compile_cpp>")

endif()

# Handle files with suffix [cC], for group default-XC32
if(PWM_20KHz_default_default_XC32_FILE_TYPE_dependentObject)
add_library(PWM_20KHz_default_default_XC32_dependentObject OBJECT ${PWM_20KHz_default_default_XC32_FILE_TYPE_dependentObject})
    PWM_20KHz_default_default_XC32_dependentObject_rule(PWM_20KHz_default_default_XC32_dependentObject)
    list(APPEND PWM_20KHz_default_library_list "$<TARGET_OBJECTS:PWM_20KHz_default_default_XC32_dependentObject>")

endif()

# Handle files with suffix elf, for group default-XC32
if(PWM_20KHz_default_default_XC32_FILE_TYPE_bin2hex)
add_library(PWM_20KHz_default_default_XC32_bin2hex OBJECT ${PWM_20KHz_default_default_XC32_FILE_TYPE_bin2hex})
    PWM_20KHz_default_default_XC32_bin2hex_rule(PWM_20KHz_default_default_XC32_bin2hex)
    list(APPEND PWM_20KHz_default_library_list "$<TARGET_OBJECTS:PWM_20KHz_default_default_XC32_bin2hex>")

endif()


# Main target for this project
add_executable(PWM_20KHz_default_image_KDm6pjEH ${PWM_20KHz_default_library_list})

set_target_properties(PWM_20KHz_default_image_KDm6pjEH PROPERTIES RUNTIME_OUTPUT_DIRECTORY ${PWM_20KHz_default_output_dir})
set_target_properties(PWM_20KHz_default_image_KDm6pjEH PROPERTIES OUTPUT_NAME "default")
set_target_properties(PWM_20KHz_default_image_KDm6pjEH PROPERTIES SUFFIX ".elf")

target_link_libraries(PWM_20KHz_default_image_KDm6pjEH PRIVATE ${PWM_20KHz_default_default_XC32_FILE_TYPE_link})


# Add the link options from the rule file.
PWM_20KHz_default_link_rule(PWM_20KHz_default_image_KDm6pjEH)

# Call bin2hex function from the rule file
PWM_20KHz_default_bin2hex_rule(PWM_20KHz_default_image_KDm6pjEH)


