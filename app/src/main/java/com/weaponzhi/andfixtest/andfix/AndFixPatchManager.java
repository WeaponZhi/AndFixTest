package com.weaponzhi.andfixtest.andfix;

import android.content.Context;

import com.alipay.euler.andfix.AndFixManager;
import com.alipay.euler.andfix.patch.PatchManager;
import com.weaponzhi.andfixtest.util.Utils;

/**
 * AndFixPatchManager 管理 AndFix 所有的 API
 * <p>
 * author: 张冠之 <br>
 * time:   2017/8/5 22:53 <br>1
 * GitHub: https://github.com/WeaponZhi
 * blog:   http://weaponzhi.online
 * CSDN:   http://blog.csdn.net/qq_34795285
 * </p>
 */

public class AndFixPatchManager {
    private static AndFixPatchManager mInstance = null;

    private static PatchManager mPatchManager = null;

    /**
     * 单例模式的双检查机制
     *
     * @return
     */
    public static AndFixPatchManager getInstance() {
        if (mInstance == null) {
            synchronized (AndFixManager.class) {
                if (mInstance == null) {
                    mInstance = new AndFixPatchManager();
                }
            }
        }
        return mInstance;
    }

    //初始化 Patch 方法
    public void initPatch(Context context) {
        mPatchManager = new PatchManager(context);
        mPatchManager.init(Utils.getVersionName(context));
        mPatchManager.loadPatch();//完成所有 Patch 加载
    }

    //加载 Patch 文件
    public void addPatch(String path) {
        try {
            if (mPatchManager != null) {
                mPatchManager.addPatch(path);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
