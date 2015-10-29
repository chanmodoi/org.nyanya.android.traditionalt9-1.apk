.class public Lorg/nyanya/android/traditionalt9/DBException;
.super Ljava/lang/Exception;
.source "DBException.java"


# static fields
.field private static final serialVersionUID:J = 0x53a7e8b7f66524fL


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 7
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 8
    return-void
.end method
