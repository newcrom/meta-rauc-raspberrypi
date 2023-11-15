FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

inherit rauc-integration

SRC_URI:append:rauc-integration = " file://rauc.cfg"
CMDLINE:remove:rauc-integration = "root=/dev/mmcblk0p2"
CMDLINE += " cgroup_enable=cpuset cgroup_memory=1 cgroup_enable=memory"