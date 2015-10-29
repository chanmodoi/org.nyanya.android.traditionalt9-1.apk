.class Lorg/nyanya/android/traditionalt9/TraditionalT9$1;
.super Ljava/lang/Object;
.source "TraditionalT9.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/nyanya/android/traditionalt9/TraditionalT9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/nyanya/android/traditionalt9/TraditionalT9;


# direct methods
.method constructor <init>(Lorg/nyanya/android/traditionalt9/TraditionalT9;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9$1;->this$0:Lorg/nyanya/android/traditionalt9/TraditionalT9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9$1;->this$0:Lorg/nyanya/android/traditionalt9/TraditionalT9;

    # invokes: Lorg/nyanya/android/traditionalt9/TraditionalT9;->commitReset()V
    invoke-static {v0}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->access$000(Lorg/nyanya/android/traditionalt9/TraditionalT9;)V

    .line 81
    return-void
.end method
