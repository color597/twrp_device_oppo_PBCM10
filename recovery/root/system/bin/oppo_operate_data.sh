#!/sbin/sh
para_list=$@

#operate date begin
start=$(date "+%Y-%m-%d %H:%M:%S")
echo "operate data begin: ${start}"

#You should add your sh operation in your own area you belongs to
#=====================OS Begin============================
#ifdef COLOROS_EDIT
#Bin.Wang@ROM.Framework,2019-09-02,Add for fallback com.heytap.usercenter to com.oppo.usercenter
heytap_usercenter_database_dir="/data/data/com.heytap.usercenter/databases/"
if [ -d $heytap_usercenter_database_dir ]; then
    mkdir -p /data/oppo/common/otasave/HTUserCenter/
    cp -rf /data/data/com.heytap.usercenter/databases/* /data/oppo/common/otasave/HTUserCenter/
    #rm -rf /data/data/com.heytap.usercenter/databases/*

    chmod -R 777 /data/oppo/common/otasave/
    chown -R 1000:1000 /data/oppo/common/otasave/
fi

#huangyuanwang@ROM.NewSoundRecorder,2020-05-07,Add for remove colorfilestand on os7.0
rm -rf /data/data/com.coloros.colorfilestand
rm -rf /data/app/ColorFileStand
rm -rf /data/app/com.coloros.colorfilestand-*
rm -rf /data/user_de/0/com.coloros.colorfilestand

#endif COLOROS_EDIT
#=====================OS End==============================

#=====================Android Begin========================
#ifdef OPLUS_FAETURE_STANDBY_MONITOR
#Zhu_Yang@ANDROID_POWER 2020/08/10 add for removing old standby power monitor log files
rm -rf /data/oppo/log/DCS/en/dcs/*
#endif OPLUS_FAETURE_STANDBY_MONITOR
#=====================Android End==========================

#=====================BSP Begin============================
#=====================BSP End==============================

#=====================Multi Begin==========================
#=====================Multi End============================

#=====================NetWork Begin========================
#=====================NetWork End==========================

#=====================Connectivity Begin========================
#ifdef VENDOR_EDIT
#Liangwen.Ke@PSW.CN.BT.Customize.2841674, 2020/02/20,
#Add for support dynamic abstract volume feature.
echo "persist.bluetooth.disableabsvol=false"
echo "persist.bluetooth.absvolume_support=true"
#=====================Connectivity End==========================

#operate end
end=$(date "+%Y-%m-%d %H:%M:%S")
echo "operate data end: ${end}"

interval=$(($(($(date +%s -d "$end")-$(date +%s -d "$start")))))
echo "operate data cost: $interval seconds"