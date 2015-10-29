.class Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$NukeDictTask;
.super Landroid/os/AsyncTask;
.source "TraditionalT9Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NukeDictTask"
.end annotation

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


# instance fields
.field pd:Landroid/app/ProgressDialog;

.field final synthetic this$0:Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;


# direct methods
.method constructor <init>(Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;I)V
    .locals 3
    .param p2, "msgid"    # I

    .prologue
    const/4 v2, 0x0

    .line 622
    iput-object p1, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$NukeDictTask;->this$0:Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 623
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$NukeDictTask;->pd:Landroid/app/ProgressDialog;

    .line 624
    iget-object v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$NukeDictTask;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 625
    iget-object v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$NukeDictTask;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 626
    iget-object v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$NukeDictTask;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 628
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 618
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$NukeDictTask;->doInBackground([Ljava/lang/String;)Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$Reply;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$Reply;
    .locals 10
    .param p1, "ignore"    # [Ljava/lang/String;

    .prologue
    .line 636
    new-instance v2, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$Reply;

    iget-object v6, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$NukeDictTask;->this$0:Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;

    invoke-direct {v2, v6}, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$Reply;-><init>(Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;)V

    .line 637
    .local v2, "reply":Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$Reply;
    const-string v6, "doInBackground"

    const-string v7, "Nuking dict..."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 640
    .local v3, "startnow":J
    iget-object v6, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$NukeDictTask;->this$0:Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;

    iget-object v6, v6, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lorg/nyanya/android/traditionalt9/T9DB;->getInstance(Landroid/content/Context;)Lorg/nyanya/android/traditionalt9/T9DB;

    move-result-object v5

    .line 641
    .local v5, "t9db":Lorg/nyanya/android/traditionalt9/T9DB;
    invoke-virtual {v5}, Lorg/nyanya/android/traditionalt9/T9DB;->nuke()V

    .line 643
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 644
    .local v0, "endnow":J
    const-string v6, "TIMING"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Execution time: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sub-long v8, v0, v3

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    return-object v2
.end method

.method protected onCancelled()V
    .locals 0

    .prologue
    .line 651
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 618
    check-cast p1, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$Reply;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$NukeDictTask;->onPostExecute(Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$Reply;)V

    return-void
.end method

.method protected onPostExecute(Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$Reply;)V
    .locals 3
    .param p1, "result"    # Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$Reply;

    .prologue
    .line 659
    iget-object v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$NukeDictTask;->this$0:Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;

    iget-object v1, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$NukeDictTask;->pd:Landroid/app/ProgressDialog;

    const v2, 0x7f080029

    # invokes: Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;->finishAndShowError(Landroid/app/ProgressDialog;Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$Reply;I)V
    invoke-static {v0, v1, p1, v2}, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;->access$200(Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;Landroid/app/ProgressDialog;Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$Reply;I)V

    .line 660
    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 631
    iget-object v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$NukeDictTask;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 632
    return-void
.end method
