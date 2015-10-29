.class Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$9;
.super Ljava/lang/Object;
.source "TraditionalT9Settings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;->nukeDict()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;


# direct methods
.method constructor <init>(Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;)V
    .locals 0

    .prologue
    .line 770
    iput-object p1, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$9;->this$0:Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 773
    iget-object v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$9;->this$0:Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;

    new-instance v1, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$NukeDictTask;

    iget-object v2, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$9;->this$0:Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;

    const v3, 0x7f08002c

    invoke-direct {v1, v2, v3}, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$NukeDictTask;-><init>(Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;I)V

    iput-object v1, v0, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;->task:Landroid/os/AsyncTask;

    .line 774
    iget-object v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$9;->this$0:Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;

    iget-object v0, v0, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;->task:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 775
    return-void
.end method
