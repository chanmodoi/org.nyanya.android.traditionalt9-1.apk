.class public Lorg/nyanya/android/traditionalt9/DBUpdateService$DisplayToast;
.super Ljava/lang/Object;
.source "DBUpdateService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/nyanya/android/traditionalt9/DBUpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DisplayToast"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field mText:Ljava/lang/CharSequence;

.field final synthetic this$0:Lorg/nyanya/android/traditionalt9/DBUpdateService;


# direct methods
.method public constructor <init>(Lorg/nyanya/android/traditionalt9/DBUpdateService;Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 0
    .param p2, "mContext"    # Landroid/content/Context;
    .param p3, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 23
    iput-object p1, p0, Lorg/nyanya/android/traditionalt9/DBUpdateService$DisplayToast;->this$0:Lorg/nyanya/android/traditionalt9/DBUpdateService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p2, p0, Lorg/nyanya/android/traditionalt9/DBUpdateService$DisplayToast;->mContext:Landroid/content/Context;

    .line 25
    iput-object p3, p0, Lorg/nyanya/android/traditionalt9/DBUpdateService$DisplayToast;->mText:Ljava/lang/CharSequence;

    .line 26
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 29
    iget-object v0, p0, Lorg/nyanya/android/traditionalt9/DBUpdateService$DisplayToast;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/nyanya/android/traditionalt9/DBUpdateService$DisplayToast;->mText:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 30
    return-void
.end method
