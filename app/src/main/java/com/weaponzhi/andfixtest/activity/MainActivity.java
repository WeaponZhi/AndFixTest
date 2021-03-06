package com.weaponzhi.andfixtest.activity;

import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.util.Log;
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
    private Button mButton;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        button = (Button) findViewById(R.id.btn_fix_bug);
        mButton = (Button) findViewById(R.id.btn_test_bug);
        button.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                fixBug();
            }
        });
        mButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                testBug();
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
        super.onResume();
    }

    public void fixBug() {
        AndFixPatchManager.getInstance().addPatch(getPatchName());
    }

    public void testBug(){g
        Toast.makeText(this,"Bug 修复之后",Toast.LENGTH_SHORT).show();
        Log.e("test","补丁已修复!");
    }

    public String getPatchName() {
        return mPatchDir.concat("imooc").concat(FILE_END);
    }
}
