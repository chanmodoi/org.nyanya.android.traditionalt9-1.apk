.class Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$12;
.super Ljava/lang/Object;
.source "TraditionalT9Settings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;->showErrorDialog(Landroid/app/AlertDialog$Builder;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
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
    .line 828
    iput-object p1, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$12;->this$0:Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 831
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 832
    return-void
.end method
