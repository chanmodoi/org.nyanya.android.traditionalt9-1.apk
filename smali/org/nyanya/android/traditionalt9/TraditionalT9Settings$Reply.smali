.class Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$Reply;
.super Ljava/lang/Object;
.source "TraditionalT9Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Reply"
.end annotation


# instance fields
.field private msgs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public status:Z

.field final synthetic this$0:Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;


# direct methods
.method protected constructor <init>(Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;)V
    .locals 1

    .prologue
    .line 83
    iput-object p1, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$Reply;->this$0:Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$Reply;->status:Z

    .line 85
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$Reply;->msgs:Ljava/util/List;

    .line 86
    return-void
.end method

.method static synthetic access$000(Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$Reply;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$Reply;

    .prologue
    .line 79
    iget-object v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$Reply;->msgs:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method protected addMsg(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$LoadException;
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$Reply;->msgs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    iget-object v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$Reply;->msgs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x6

    if-le v0, v1, :cond_0

    .line 91
    iget-object v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$Reply;->msgs:Ljava/util/List;

    const-string v1, "Too many errors, bailing."

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    new-instance v0, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$LoadException;

    iget-object v1, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$Reply;->this$0:Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;

    invoke-direct {v0, v1}, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$LoadException;-><init>(Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;)V

    throw v0

    .line 94
    :cond_0
    return-void
.end method

.method protected forceMsg(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 96
    iget-object v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$Reply;->msgs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    return-void
.end method
