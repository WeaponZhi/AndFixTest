package com.weaponzhi.andfixtest.application;

import android.app.Application;

import com.weaponzhi.andfixtest.andfix.AndFixPatchManager;

/**
 * ImoocApplication
 * <p>
 * author: 张冠之 <br>
 * time:   2017/8/5 23:03 <br>
 * GitHub: https://github.com/WeaponZhi
 * blog:   http://weaponzhi.online
 * CSDN:   http://blog.csdn.net/qq_34795285
 * </p>
 */

public class ImoocApplication extends Application{

    @Override
    public void onCreate() {
        super.onCreate();

        //完成 AndFix 模块的初始化
        initAndFix();
    }

    private void initAndFix() {
        AndFixPatchManager.getInstance().initPatch(this);
    }
}
