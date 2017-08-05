package com.weaponzhi.andfixtest.activity;

import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.widget.Button;
import android.widget.Toast;

import com.weaponzhi.andfixtest.R;
import com.weaponzhi.andfixtest.andfix.AndFixPatchManager;

import java.io.File;

public class MainActivity extends AppCompatActivity {
    private static final String FILE_END = ".apatch";
    private String mPatchDir;
    private Button button;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        button = (Button) findViewById(R.id.btn_fix_bug);
        button.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                fixBug();
            }
        });
        mPatchDir = getExternalCacheDir().getAbsolutePath() + "/apatch/";
        //创建文件夹
        File file = new File(mPatchDir);
        if (file == null || file.exists()) {
            file.mkdir();
        }
    }

    @Override
    protected void onResume() {
        Toast.makeText(this, "打补丁之前", Toast.LENGTH_SHORT).show();
        super.onResume();
    }

    public void fixBug() {
        AndFixPatchManager.getInstance().addPatch(getPatchName());
    }

    public String getPatchName() {
        return mPatchDir.concat("imooc").concat(FILE_END);
    }
}
