package com.weaponzhi.andfixtest.util;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;

/**
 * Created by pc on 2017/8/5.
 */

public class Utils {
    public static String getVersionName(Context context){
        String versionName = "1.0.0";
        try {
            PackageManager pm = context.getPackageManager();
            PackageInfo pi = pm.getPackageInfo(context.getPackageName(),0);
            versionName = pi.versionName;
        }catch (Exception e){
            e.printStackTrace();
        }
        return versionName;
    }
}
