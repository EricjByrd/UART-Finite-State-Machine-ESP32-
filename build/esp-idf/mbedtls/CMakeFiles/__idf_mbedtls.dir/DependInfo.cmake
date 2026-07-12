
# Consider dependencies only in project.
set(CMAKE_DEPENDS_IN_PROJECT_ONLY OFF)

# The set of languages for which implicit dependencies are needed:
set(CMAKE_DEPENDS_LANGUAGES
  "ASM"
  )
# The set of files for implicit dependencies of each language:
set(CMAKE_DEPENDS_CHECK_ASM
  "/home/bmetal/esp-idf/uartTest/build/x509_crt_bundle.S" "/home/bmetal/esp-idf/uartTest/build/esp-idf/mbedtls/CMakeFiles/__idf_mbedtls.dir/__/__/x509_crt_bundle.S.obj"
  )
set(CMAKE_ASM_COMPILER_ID "GNU")

# Preprocessor definitions for this target.
set(CMAKE_TARGET_DEFINITIONS_ASM
  "ESP_PLATFORM"
  "ESP_PSA_ITS_AVAILABLE"
  "IDF_VER=\"v6.1-dev-5440-g325e39678c-dirty\""
  "MBEDTLS_CONFIG_FILE=\"mbedtls/esp_config.h\""
  "MBEDTLS_MAJOR_VERSION=4"
  "SOC_MMU_PAGE_SIZE=CONFIG_MMU_PAGE_SIZE"
  "SOC_XTAL_FREQ_MHZ=CONFIG_XTAL_FREQ"
  "TF_PSA_CRYPTO_USER_CONFIG_FILE=\"mbedtls/esp_config.h\""
  "_GLIBCXX_HAVE_POSIX_SEMAPHORE"
  "_GLIBCXX_USE_POSIX_SEMAPHORE"
  "_GNU_SOURCE"
  "_POSIX_READER_WRITER_LOCKS"
  "__STDC_WANT_LIB_EXT1__=0"
  )

# The include file search paths:
set(CMAKE_ASM_TARGET_INCLUDE_PATH
  "config"
  "/home/bmetal/esp-idf/components/mbedtls/port/include"
  "/home/bmetal/esp-idf/components/mbedtls/mbedtls/include"
  "/home/bmetal/esp-idf/components/mbedtls/mbedtls/library"
  "/home/bmetal/esp-idf/components/mbedtls/mbedtls/tf-psa-crypto/core"
  "/home/bmetal/esp-idf/components/mbedtls/mbedtls/tf-psa-crypto/drivers/builtin/src"
  "/home/bmetal/esp-idf/components/mbedtls/mbedtls/tf-psa-crypto/extras"
  "/home/bmetal/esp-idf/components/mbedtls/esp_crt_bundle/include"
  "/home/bmetal/esp-idf/components/mbedtls/port/psa_driver/include"
  "/home/bmetal/esp-idf/components/esp_libc/platform_include"
  "/home/bmetal/esp-idf/components/freertos/config/include"
  "/home/bmetal/esp-idf/components/freertos/config/include/freertos"
  "/home/bmetal/esp-idf/components/freertos/config/xtensa/include"
  "/home/bmetal/esp-idf/components/freertos/FreeRTOS-Kernel/include"
  "/home/bmetal/esp-idf/components/freertos/FreeRTOS-Kernel/portable/xtensa/include"
  "/home/bmetal/esp-idf/components/freertos/FreeRTOS-Kernel/portable/xtensa/include/freertos"
  "/home/bmetal/esp-idf/components/freertos/esp_additions/include"
  "/home/bmetal/esp-idf/components/esp_hw_support/include"
  "/home/bmetal/esp-idf/components/esp_hw_support/include/soc"
  "/home/bmetal/esp-idf/components/esp_hw_support/ldo/include"
  "/home/bmetal/esp-idf/components/esp_hw_support/debug_probe/include"
  "/home/bmetal/esp-idf/components/esp_hw_support/etm/include"
  "/home/bmetal/esp-idf/components/esp_hw_support/mspi/mspi_timing_tuning/include"
  "/home/bmetal/esp-idf/components/esp_hw_support/mspi/mspi_timing_tuning/tuning_scheme_impl/include"
  "/home/bmetal/esp-idf/components/esp_hw_support/mspi/mspi_intr/include"
  "/home/bmetal/esp-idf/components/esp_hw_support/power_supply/include"
  "/home/bmetal/esp-idf/components/esp_hw_support/modem/include"
  "/home/bmetal/esp-idf/components/esp_hw_support/port/esp32/."
  "/home/bmetal/esp-idf/components/esp_hw_support/port/esp32/include"
  "/home/bmetal/esp-idf/components/heap/include"
  "/home/bmetal/esp-idf/components/heap/tlsf"
  "/home/bmetal/esp-idf/components/log/include"
  "/home/bmetal/esp-idf/components/soc/include"
  "/home/bmetal/esp-idf/components/soc/esp32"
  "/home/bmetal/esp-idf/components/soc/esp32/include"
  "/home/bmetal/esp-idf/components/soc/esp32/register"
  "/home/bmetal/esp-idf/components/hal/platform_port/include"
  "/home/bmetal/esp-idf/components/hal/esp32/include"
  "/home/bmetal/esp-idf/components/hal/include"
  "/home/bmetal/esp-idf/components/esp_rom/include"
  "/home/bmetal/esp-idf/components/esp_rom/esp32/include"
  "/home/bmetal/esp-idf/components/esp_rom/esp32/include/esp32"
  "/home/bmetal/esp-idf/components/esp_rom/esp32"
  "/home/bmetal/esp-idf/components/esp_common/include"
  "/home/bmetal/esp-idf/components/esp_system/include"
  "/home/bmetal/esp-idf/components/esp_system/port/soc"
  "/home/bmetal/esp-idf/components/esp_system/port/include/private"
  "/home/bmetal/esp-idf/components/esp_stdio/include"
  "/home/bmetal/esp-idf/components/xtensa/esp32/include"
  "/home/bmetal/esp-idf/components/xtensa/include"
  "/home/bmetal/esp-idf/components/xtensa/deprecated_include"
  "/home/bmetal/esp-idf/components/esp_hal_gpio/include"
  "/home/bmetal/esp-idf/components/esp_hal_gpio/esp32/include"
  "/home/bmetal/esp-idf/components/esp_hal_usb/include"
  "/home/bmetal/esp-idf/components/esp_hal_pmu/include"
  "/home/bmetal/esp-idf/components/esp_hal_pmu/esp32/include"
  "/home/bmetal/esp-idf/components/esp_hal_regi2c/include"
  "/home/bmetal/esp-idf/components/esp_hal_regi2c/esp32/include"
  "/home/bmetal/esp-idf/components/esp_hal_ana_conv/include"
  "/home/bmetal/esp-idf/components/esp_hal_ana_conv/esp32/include"
  "/home/bmetal/esp-idf/components/esp_hal_dma/include"
  "/home/bmetal/esp-idf/components/esp_hal_i2s/include"
  "/home/bmetal/esp-idf/components/esp_hal_i2s/esp32/include"
  "/home/bmetal/esp-idf/components/lwip/include"
  "/home/bmetal/esp-idf/components/lwip/include/apps"
  "/home/bmetal/esp-idf/components/lwip/lwip/src/include"
  "/home/bmetal/esp-idf/components/lwip/port/include"
  "/home/bmetal/esp-idf/components/lwip/port/freertos/include"
  "/home/bmetal/esp-idf/components/lwip/port/esp32xx/include"
  "/home/bmetal/esp-idf/components/lwip/port/esp32xx/include/arch"
  "/home/bmetal/esp-idf/components/lwip/port/esp32xx/include/sys"
  "/home/bmetal/esp-idf/components/esp_security/include"
  "/home/bmetal/esp-idf/components/esp_hal_security/esp32/include"
  "/home/bmetal/esp-idf/components/esp_hal_security/include"
  "/home/bmetal/esp-idf/components/esp_pm/include"
  "/home/bmetal/esp-idf/components/esp_driver_dma/include"
  "/home/bmetal/esp-idf/components/mbedtls/mbedtls/tf-psa-crypto/include"
  "/home/bmetal/esp-idf/components/mbedtls/mbedtls/tf-psa-crypto/drivers/builtin/include"
  "esp-idf/mbedtls/mbedtls/tf-psa-crypto/include"
  "/home/bmetal/esp-idf/components/mbedtls/mbedtls/tf-psa-crypto/drivers/everest/include"
  "/home/bmetal/esp-idf/components/mbedtls/mbedtls/tf-psa-crypto/drivers/p256-m/p256-m"
  "/home/bmetal/esp-idf/components/mbedtls/mbedtls/tf-psa-crypto/drivers/pqcp/include"
  )

# The set of dependency files which are needed:
set(CMAKE_DEPENDS_DEPENDENCY_FILES
  "/home/bmetal/esp-idf/components/mbedtls/esp_crt_bundle/esp_crt_bundle.c" "esp-idf/mbedtls/CMakeFiles/__idf_mbedtls.dir/esp_crt_bundle/esp_crt_bundle.c.obj" "gcc" "esp-idf/mbedtls/CMakeFiles/__idf_mbedtls.dir/esp_crt_bundle/esp_crt_bundle.c.obj.d"
  "/home/bmetal/esp-idf/components/mbedtls/port/esp_mem.c" "esp-idf/mbedtls/CMakeFiles/__idf_mbedtls.dir/port/esp_mem.c.obj" "gcc" "esp-idf/mbedtls/CMakeFiles/__idf_mbedtls.dir/port/esp_mem.c.obj.d"
  )

# Targets to which this target links which contain Fortran sources.
set(CMAKE_Fortran_TARGET_LINKED_INFO_FILES
  )

# Targets to which this target links which contain Fortran sources.
set(CMAKE_Fortran_TARGET_FORWARD_LINKED_INFO_FILES
  )

# Fortran module output directory.
set(CMAKE_Fortran_TARGET_MODULE_DIR "")
