.class public Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;
.super Landroid/preference/PreferenceActivity;
.source "TraditionalT9Settings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$NukeDictTask;,
        Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$DumpDictTask;,
        Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$LoadDictTask;,
        Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$Reply;,
        Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$LoadException;
    }
.end annotation


# static fields
.field static final backupname:Ljava/lang/String; = "t9backup.txt"

.field static final dictname:Ljava/lang/String; = "%s-utf8.txt"

.field static final sddir:Ljava/lang/String; = "traditionalt9"

.field static final userdictname:Ljava/lang/String; = "user.%s.dict"


# instance fields
.field final BACKUP_Q_LIMIT:I

.field mContext:Landroid/content/Context;

.field task:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$Reply;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 61
    iput-object v1, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;->task:Landroid/os/AsyncTask;

    .line 67
    const/16 v0, 0x3e8

    iput v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;->BACKUP_Q_LIMIT:I

    .line 69
    iput-object v1, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;->mContext:Landroid/content/Context;

    .line 618
    return-void
.end method

.method static synthetic access$100(Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;Ljava/io/Closeable;Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$Reply;)V
    .locals 0
    .param p0, "x0"    # Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;
    .param p1, "x1"    # Ljava/io/Closeable;
    .param p2, "x2"    # Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$Reply;

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;->closeStream(Ljava/io/Closeable;Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$Reply;)V

    return-void
.end method

.method static synthetic access$200(Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;Landroid/app/ProgressDialog;Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$Reply;I)V
    .locals 0
    .param p0, "x0"    # Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;
    .param p1, "x1"    # Landroid/app/ProgressDialog;
    .param p2, "x2"    # Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$Reply;
    .param p3, "x3"    # I

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;->finishAndShowError(Landroid/app/ProgressDialog;Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$Reply;I)V

    return-void
.end method

.method static synthetic access$300(Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;)V
    .locals 0
    .param p0, "x0"    # Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;

    .prologue
    .line 58
    invoke-direct {p0}, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;->openHelp()V

    return-void
.end method

.method static synthetic access$400(Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;IZZ)V
    .locals 0
    .param p0, "x0"    # Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;->preloader(IZZ)V

    return-void
.end method

.method static synthetic access$500(Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;)V
    .locals 0
    .param p0, "x0"    # Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;

    .prologue
    .line 58
    invoke-direct {p0}, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;->nukeDict()V

    return-void
.end method

.method static synthetic access$600(Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;)V
    .locals 0
    .param p0, "x0"    # Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;

    .prologue
    .line 58
    invoke-direct {p0}, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;->backupDict()V

    return-void
.end method

.method static synthetic access$700(Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;)V
    .locals 0
    .param p0, "x0"    # Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;

    .prologue
    .line 58
    invoke-direct {p0}, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;->restoreDict()V

    return-void
.end method

.method static synthetic access$800(Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;)V
    .locals 0
    .param p0, "x0"    # Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;

    .prologue
    .line 58
    invoke-direct {p0}, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;->test()V

    return-void
.end method

.method static synthetic access$900(Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;I)V
    .locals 0
    .param p0, "x0"    # Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;
    .param p1, "x1"    # I

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;->predumper(I)V

    return-void
.end method

.method private backupDict()V
    .locals 9

    .prologue
    const v8, 0x7f080017

    const v7, 0x7f080018

    .line 787
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 788
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string v4, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 790
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    const-string v5, "traditionalt9"

    invoke-direct {v2, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 791
    .local v2, "saveloc":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 792
    invoke-virtual {v2}, Ljava/io/File;->canWrite()Z

    move-result v4

    if-nez v4, :cond_0

    .line 793
    const-string v4, "backupDict"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "can\'t write : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    invoke-direct {p0, v0, v7, v8}, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;->showErrorDialogID(Landroid/app/AlertDialog$Builder;II)V

    .line 820
    .end local v2    # "saveloc":Ljava/io/File;
    :goto_0
    return-void

    .line 798
    .restart local v2    # "saveloc":Ljava/io/File;
    :cond_0
    new-instance v3, Ljava/io/File;

    const-string v4, "t9backup.txt"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 799
    .end local v2    # "saveloc":Ljava/io/File;
    .local v3, "saveloc":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 800
    const v4, 0x7f080019

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f080016

    new-instance v6, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$11;

    invoke-direct {v6, p0}, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$11;-><init>(Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f080007

    new-instance v6, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$10;

    invoke-direct {v6, p0}, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$10;-><init>(Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 812
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 813
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 815
    .end local v1    # "dialog":Landroid/app/AlertDialog;
    :cond_1
    const v4, 0x7f080033

    invoke-direct {p0, v4}, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;->predumper(I)V

    goto :goto_0

    .line 818
    .end local v3    # "saveloc":Ljava/io/File;
    :cond_2
    invoke-direct {p0, v0, v7, v8}, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;->showErrorDialogID(Landroid/app/AlertDialog$Builder;II)V

    goto :goto_0
.end method

.method private closeStream(Ljava/io/Closeable;Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$Reply;)V
    .locals 3
    .param p1, "is"    # Ljava/io/Closeable;
    .param p2, "reply"    # Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$Reply;

    .prologue
    .line 121
    if-nez p1, :cond_0

    .line 130
    :goto_0
    return-void

    .line 125
    :cond_0
    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t close stream: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$Reply;->forceMsg(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private finishAndShowError(Landroid/app/ProgressDialog;Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$Reply;I)V
    .locals 4
    .param p1, "pd"    # Landroid/app/ProgressDialog;
    .param p2, "result"    # Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$Reply;
    .param p3, "title"    # I

    .prologue
    .line 102
    if-eqz p1, :cond_0

    .line 104
    invoke-virtual {p1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 108
    :cond_0
    if-nez p2, :cond_2

    .line 110
    const-string v1, "onPostExecute"

    const-string v2, "Bad things happen?"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_1
    :goto_0
    return-void

    .line 112
    :cond_2
    const-string v1, "\n"

    # getter for: Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$Reply;->msgs:Ljava/util/List;
    invoke-static {p2}, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$Reply;->access$000(Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$Reply;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, "msg":Ljava/lang/String;
    const-string v1, "onPostExecute"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p2, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$Reply;->status:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-boolean v1, p2, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$Reply;->status:Z

    if-nez v1, :cond_1

    .line 115
    invoke-virtual {p0}, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;->showErrorDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private nukeDict()V
    .locals 5

    .prologue
    .line 768
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 769
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f08002a

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f080029

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f080016

    new-instance v4, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$9;

    invoke-direct {v4, p0}, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$9;-><init>(Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f080007

    new-instance v4, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$8;

    invoke-direct {v4, p0}, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$8;-><init>(Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 782
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 783
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 784
    return-void
.end method

.method private openHelp()V
    .locals 2

    .prologue
    .line 749
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 750
    .local v0, "i":Landroid/content/Intent;
    const v1, 0x7f08000b

    invoke-virtual {p0, v1}, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 751
    invoke-virtual {p0, v0}, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;->startActivity(Landroid/content/Intent;)V

    .line 752
    return-void
.end method

.method private predumper(I)V
    .locals 2
    .param p1, "msgid"    # I

    .prologue
    .line 763
    new-instance v0, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$DumpDictTask;

    invoke-direct {v0, p0, p1}, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$DumpDictTask;-><init>(Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;I)V

    iput-object v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;->task:Landroid/os/AsyncTask;

    .line 764
    iget-object v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;->task:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 765
    return-void
.end method

.method private preloader(IZZ)V
    .locals 6
    .param p1, "msgid"    # I
    .param p2, "internal"    # Z
    .param p3, "restorebackup"    # Z

    .prologue
    .line 757
    new-instance v0, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$LoadDictTask;

    const-string v1, "pref_lang_support"

    invoke-virtual {p0, v1}, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/nyanya/android/traditionalt9/LangHelper;->buildLangs(Ljava/lang/CharSequence;)[I

    move-result-object v5

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$LoadDictTask;-><init>(Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;IZZ[I)V

    iput-object v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;->task:Landroid/os/AsyncTask;

    .line 759
    iget-object v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;->task:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 760
    return-void
.end method

.method private queryTest()V
    .locals 9

    .prologue
    .line 918
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 920
    .local v2, "startnow":J
    invoke-static {p0}, Lorg/nyanya/android/traditionalt9/T9DB;->getInstance(Landroid/content/Context;)Lorg/nyanya/android/traditionalt9/T9DB;

    move-result-object v4

    .line 930
    .local v4, "tdb":Lorg/nyanya/android/traditionalt9/T9DB;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 931
    .local v0, "endnow":J
    const-string v5, "TIMING"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Execution time: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long v7, v0, v2

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    return-void
.end method

.method private queryTestDebug()V
    .locals 13

    .prologue
    const/4 v4, 0x0

    .line 889
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 890
    .local v2, "words":Ljava/util/AbstractList;, "Ljava/util/AbstractList<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 892
    .local v3, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 894
    .local v9, "startnow":J
    invoke-static {p0}, Lorg/nyanya/android/traditionalt9/T9DB;->getInstance(Landroid/content/Context;)Lorg/nyanya/android/traditionalt9/T9DB;

    move-result-object v0

    .line 895
    .local v0, "tdb":Lorg/nyanya/android/traditionalt9/T9DB;
    const-string v1, "queryTestDebug"

    const-string v5, "Testing..."

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    const-string v1, "123"

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/nyanya/android/traditionalt9/T9DB;->updateWords(Ljava/lang/String;Ljava/util/AbstractList;Ljava/util/List;II)V

    .line 897
    const-string v1, "queryTestDebug"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "123->"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/util/AbstractList;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    const-string v1, "queryTestDebug"

    const-string v5, "269->"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    const-string v1, "269"

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/nyanya/android/traditionalt9/T9DB;->updateWords(Ljava/lang/String;Ljava/util/AbstractList;Ljava/util/List;II)V

    .line 900
    invoke-virtual {v2}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 901
    .local v8, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 902
    const-string v5, "queryTestDebug"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "word: "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 905
    :cond_0
    const-string v1, "queryTestDebug"

    const-string v5, "228->"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    const-string v1, "228"

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/nyanya/android/traditionalt9/T9DB;->updateWords(Ljava/lang/String;Ljava/util/AbstractList;Ljava/util/List;II)V

    .line 907
    invoke-virtual {v2}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 908
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 909
    const-string v4, "queryTestDebug"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "word: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 911
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 912
    .local v6, "endnow":J
    const-string v1, "TIMING"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Execution time: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sub-long v11, v6, v9

    invoke-virtual {v4, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    return-void
.end method

.method private queryTestSingle()V
    .locals 14

    .prologue
    .line 938
    new-instance v2, Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 939
    .local v2, "words":Ljava/util/AbstractList;, "Ljava/util/AbstractList<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 940
    .local v3, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 942
    .local v9, "startnow":J
    invoke-static {p0}, Lorg/nyanya/android/traditionalt9/T9DB;->getInstance(Landroid/content/Context;)Lorg/nyanya/android/traditionalt9/T9DB;

    move-result-object v0

    .line 944
    .local v0, "tdb":Lorg/nyanya/android/traditionalt9/T9DB;
    const-string v1, "222"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lorg/nyanya/android/traditionalt9/T9DB;->updateWords(Ljava/lang/String;Ljava/util/AbstractList;Ljava/util/List;II)V

    .line 945
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 946
    .local v8, "size":I
    if-lez v8, :cond_0

    .line 947
    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/nyanya/android/traditionalt9/T9DB;->incrementWord(I)V

    .line 948
    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/nyanya/android/traditionalt9/T9DB;->incrementWord(I)V

    .line 949
    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/nyanya/android/traditionalt9/T9DB;->incrementWord(I)V

    .line 952
    :cond_0
    const/4 v11, 0x0

    .local v11, "x":I
    :goto_0
    if-ge v11, v8, :cond_1

    .line 953
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/nyanya/android/traditionalt9/T9DB;->incrementWord(I)V

    .line 952
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 956
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 957
    .local v6, "endnow":J
    const-string v1, "TIMING"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Execution time: "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-long v12, v6, v9

    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v12, " ms"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    new-instance v4, Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 960
    .local v4, "freqs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const-string v1, "222"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lorg/nyanya/android/traditionalt9/T9DB;->updateWordsW(Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;I)V

    .line 961
    const-string v1, "VALUES"

    const-string v5, "..."

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    .line 963
    const/4 v11, 0x0

    :goto_1
    if-ge v11, v8, :cond_2

    .line 964
    const-string v5, "VALUES"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Word: "

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2, v11}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v12, " id: "

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v12, " freq: "

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 967
    :cond_2
    const-string v1, "queryTestSingle"

    const-string v5, "done."

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    return-void
.end method

.method private restoreDict()V
    .locals 8

    .prologue
    const v7, 0x7f080030

    .line 853
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 854
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string v3, "mounted_ro"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 856
    :cond_0
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    const-string v6, "traditionalt9"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v5, "t9backup.txt"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 858
    invoke-virtual {p0}, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 859
    .local v2, "res":Landroid/content/res/Resources;
    const v3, 0x7f080031

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const v6, 0x7f08002b

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f080016

    new-instance v5, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$15;

    invoke-direct {v5, p0}, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$15;-><init>(Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f080007

    new-instance v5, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$14;

    invoke-direct {v5, p0}, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$14;-><init>(Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 875
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 876
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 884
    .end local v1    # "dialog":Landroid/app/AlertDialog;
    .end local v2    # "res":Landroid/content/res/Resources;
    :goto_0
    return-void

    .line 878
    :cond_1
    const v3, 0x7f08002f

    invoke-direct {p0, v0, v7, v3}, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;->showErrorDialogID(Landroid/app/AlertDialog$Builder;II)V

    goto :goto_0

    .line 882
    :cond_2
    const v3, 0x7f08002e

    invoke-direct {p0, v0, v7, v3}, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;->showErrorDialogID(Landroid/app/AlertDialog$Builder;II)V

    goto :goto_0
.end method

.method private showErrorDialog(Landroid/app/AlertDialog$Builder;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "msg"    # Ljava/lang/CharSequence;

    .prologue
    .line 827
    invoke-virtual {p1, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f080016

    new-instance v3, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$12;

    invoke-direct {v3, p0}, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$12;-><init>(Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 834
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 835
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 836
    return-void
.end method

.method private showErrorDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "msg"    # Ljava/lang/CharSequence;

    .prologue
    .line 823
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, p1, p2}, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;->showErrorDialog(Landroid/app/AlertDialog$Builder;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 824
    return-void
.end method

.method private showErrorDialogID(Landroid/app/AlertDialog$Builder;II)V
    .locals 4
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;
    .param p2, "titleid"    # I
    .param p3, "msgid"    # I

    .prologue
    .line 839
    invoke-virtual {p1, p3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f080016

    new-instance v3, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$13;

    invoke-direct {v3, p0}, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$13;-><init>(Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 846
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 847
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 848
    return-void
.end method

.method private test()V
    .locals 4

    .prologue
    .line 970
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 971
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, ""

    const-string v2, "pref_lang_support"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 972
    const-string v1, "T9Settings.test"

    const-string v2, "AAAAAAAAAA blank string"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    :cond_0
    const-string v1, "T9Settings.test"

    const-string v2, "pref_lang_support"

    const-string v3, "aaaaaaaaaa"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dint"    # Landroid/content/DialogInterface;

    .prologue
    .line 978
    iget-object v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;->task:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 979
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 665
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 666
    const v1, 0x7f040001

    invoke-virtual {p0, v1}, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;->addPreferencesFromResource(I)V

    .line 668
    invoke-virtual {p0}, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v1

    const-string v2, "help"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 669
    .local v0, "button":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 670
    new-instance v1, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$1;

    invoke-direct {v1, p0}, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$1;-><init>(Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 679
    :cond_0
    invoke-virtual {p0}, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v1

    const-string v2, "loaddict"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 680
    if-eqz v0, :cond_1

    .line 681
    new-instance v1, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$2;

    invoke-direct {v1, p0}, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$2;-><init>(Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 690
    :cond_1
    invoke-virtual {p0}, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v1

    const-string v2, "loaduserdict"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 691
    if-eqz v0, :cond_2

    .line 692
    new-instance v1, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$3;

    invoke-direct {v1, p0}, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$3;-><init>(Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 701
    :cond_2
    invoke-virtual {p0}, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v1

    const-string v2, "nukedict"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 702
    if-eqz v0, :cond_3

    .line 703
    new-instance v1, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$4;

    invoke-direct {v1, p0}, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$4;-><init>(Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 712
    :cond_3
    invoke-virtual {p0}, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v1

    const-string v2, "backupdict"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 713
    if-eqz v0, :cond_4

    .line 714
    new-instance v1, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$5;

    invoke-direct {v1, p0}, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$5;-><init>(Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 723
    :cond_4
    invoke-virtual {p0}, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v1

    const-string v2, "restoredict"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 724
    if-eqz v0, :cond_5

    .line 725
    new-instance v1, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$6;

    invoke-direct {v1, p0}, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$6;-><init>(Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 734
    :cond_5
    invoke-virtual {p0}, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v1

    const-string v2, "querytest"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 735
    if-eqz v0, :cond_6

    .line 736
    new-instance v1, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$7;

    invoke-direct {v1, p0}, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$7;-><init>(Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 745
    :cond_6
    iput-object p0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;->mContext:Landroid/content/Context;

    .line 746
    return-void
.end method
