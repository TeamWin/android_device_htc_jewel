ifneq ($(filter jewel,$(TARGET_DEVICE)),)
    include $(all-subdir-makefiles)
endif
