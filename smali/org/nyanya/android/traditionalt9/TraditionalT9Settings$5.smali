.class Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$5;
.super Ljava/lang/Object;
.source "TraditionalT9Settings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;->onCreate(Landroid/os/Bundle;)V
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
    .line 714
    iput-object p1, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$5;->this$0:Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/preference/Preference;

    .prologue
    .line 717
    iget-object v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$5;->this$0:Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;

    # invokes: Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;->backupDict()V
    invoke-static {v0}, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;->access$600(Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;)V

    .line 718
    const/4 v0, 0x1

    return v0
.end method
