.class public Lcom/weaponzhi/andfixtest/activity/MainActivity_CF;
.super Landroid/support/v7/app/AppCompatActivity;
.source "MainActivity.java"


# static fields
.field private static final FILE_END:Ljava/lang/String; = ".apatch"


# instance fields
.field private button:Landroid/widget/Button;

.field private mButton:Landroid/widget/Button;

.field private mPatchDir:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public fixBug()V
    .locals 2

    .prologue
    .line 53
    invoke-static {}, Lcom/weaponzhi/andfixtest/andfix/AndFixPatchManager;->getInstance()Lcom/weaponzhi/andfixtest/andfix/AndFixPatchManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/weaponzhi/andfixtest/activity/MainActivity_CF;->getPatchName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/weaponzhi/andfixtest/andfix/AndFixPatchManager;->addPatch(Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public getPatchName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/weaponzhi/andfixtest/activity/MainActivity_CF;->mPatchDir:Ljava/lang/String;

    const-string v1, "imooc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ".apatch"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 23
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    const v1, 0x7f04001b

    invoke-virtual {p0, v1}, Lcom/weaponzhi/andfixtest/activity/MainActivity_CF;->setContentView(I)V

    .line 25
    const v1, 0x7f0b005e

    invoke-virtual {p0, v1}, Lcom/weaponzhi/andfixtest/activity/MainActivity_CF;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/weaponzhi/andfixtest/activity/MainActivity_CF;->button:Landroid/widget/Button;

    .line 26
    const v1, 0x7f0b005f

    invoke-virtual {p0, v1}, Lcom/weaponzhi/andfixtest/activity/MainActivity_CF;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/weaponzhi/andfixtest/activity/MainActivity_CF;->mButton:Landroid/widget/Button;

    .line 27
    iget-object v1, p0, Lcom/weaponzhi/andfixtest/activity/MainActivity_CF;->button:Landroid/widget/Button;

    new-instance v2, Lcom/weaponzhi/andfixtest/activity/MainActivity$1;

    invoke-direct {v2, p0}, Lcom/weaponzhi/andfixtest/activity/MainActivity$1;-><init>(Lcom/weaponzhi/andfixtest/activity/MainActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    iget-object v1, p0, Lcom/weaponzhi/andfixtest/activity/MainActivity_CF;->mButton:Landroid/widget/Button;

    new-instance v2, Lcom/weaponzhi/andfixtest/activity/MainActivity$2;

    invoke-direct {v2, p0}, Lcom/weaponzhi/andfixtest/activity/MainActivity$2;-><init>(Lcom/weaponzhi/andfixtest/activity/MainActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/weaponzhi/andfixtest/activity/MainActivity_CF;->getExternalCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/apatch/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/weaponzhi/andfixtest/activity/MainActivity_CF;->mPatchDir:Ljava/lang/String;

    .line 41
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/weaponzhi/andfixtest/activity/MainActivity_CF;->mPatchDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 42
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 43
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 45
    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 49
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 50
    return-void
.end method

.method public testBug()V
    .locals 2
    .annotation runtime Lcom/alipay/euler/andfix/annotation/MethodReplace;
        clazz = "com.weaponzhi.andfixtest.activity.MainActivity"
        method = "testBug"
    .end annotation

    .prologue
    .line 57
    const-string v0, "Bug \u4fee\u590d\u4e4b\u540e"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 58
    const-string v0, "test"

    const-string v1, "\u8865\u4e01\u5df2\u4fee\u590d"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    return-void
.end method
