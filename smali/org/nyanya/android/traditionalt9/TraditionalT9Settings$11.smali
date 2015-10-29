.class Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$11;
.super Ljava/lang/Object;
.source "TraditionalT9Settings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;->backupDict()V
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
    .line 801
    iput-object p1, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$11;->this$0:Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 804
    iget-object v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$11;->this$0:Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;

    const v1, 0x7f080033

    # invokes: Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;->predumper(I)V
    invoke-static {v0, v1}, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;->access$900(Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;I)V

    .line 805
    return-void
.end method
