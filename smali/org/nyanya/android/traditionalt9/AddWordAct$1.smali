.class Lorg/nyanya/android/traditionalt9/AddWordAct$1;
.super Ljava/lang/Object;
.source "AddWordAct.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/nyanya/android/traditionalt9/AddWordAct;->doAddWord(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/nyanya/android/traditionalt9/AddWordAct;


# direct methods
.method constructor <init>(Lorg/nyanya/android/traditionalt9/AddWordAct;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lorg/nyanya/android/traditionalt9/AddWordAct$1;->this$0:Lorg/nyanya/android/traditionalt9/AddWordAct;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 61
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 62
    return-void
.end method
