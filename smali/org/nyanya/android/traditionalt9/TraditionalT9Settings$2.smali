.class Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$2;
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
    .line 681
    iput-object p1, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$2;->this$0:Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "arg0"    # Landroid/preference/Preference;

    .prologue
    const/4 v3, 0x1

    .line 684
    iget-object v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$2;->this$0:Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;

    const v1, 0x7f080022

    const/4 v2, 0x0

    # invokes: Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;->preloader(IZZ)V
    invoke-static {v0, v1, v3, v2}, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;->access$400(Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;IZZ)V

    .line 685
    return v3
.end method
