.class Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$LoadDictTask$1;
.super Ljava/lang/Object;
.source "TraditionalT9Settings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$LoadDictTask;->doInBackground([Ljava/lang/String;)Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$Reply;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$LoadDictTask;

.field final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$LoadDictTask;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 292
    iput-object p1, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$LoadDictTask$1;->this$1:Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$LoadDictTask;

    iput-object p2, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$LoadDictTask$1;->val$msg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 295
    iget-object v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$LoadDictTask$1;->this$1:Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$LoadDictTask;

    iget-object v0, v0, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$LoadDictTask;->this$0:Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;

    iget-object v0, v0, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$LoadDictTask$1;->val$msg:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 298
    return-void
.end method
