.class public final Lcom/stackoverflow/answer/UnicodeBOMInputStream$BOM;
.super Ljava/lang/Object;
.source "UnicodeBOMInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stackoverflow/answer/UnicodeBOMInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BOM"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final NONE:Lcom/stackoverflow/answer/UnicodeBOMInputStream$BOM;

.field public static final UTF_16_BE:Lcom/stackoverflow/answer/UnicodeBOMInputStream$BOM;

.field public static final UTF_16_LE:Lcom/stackoverflow/answer/UnicodeBOMInputStream$BOM;

.field public static final UTF_32_BE:Lcom/stackoverflow/answer/UnicodeBOMInputStream$BOM;

.field public static final UTF_32_LE:Lcom/stackoverflow/answer/UnicodeBOMInputStream$BOM;

.field public static final UTF_8:Lcom/stackoverflow/answer/UnicodeBOMInputStream$BOM;


# instance fields
.field final bytes:[B

.field private final description:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v1, 0x0

    .line 42
    const-class v0, Lcom/stackoverflow/answer/UnicodeBOMInputStream;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/stackoverflow/answer/UnicodeBOMInputStream$BOM;->$assertionsDisabled:Z

    .line 47
    new-instance v0, Lcom/stackoverflow/answer/UnicodeBOMInputStream$BOM;

    new-array v1, v1, [B

    const-string v2, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/stackoverflow/answer/UnicodeBOMInputStream$BOM;-><init>([BLjava/lang/String;)V

    sput-object v0, Lcom/stackoverflow/answer/UnicodeBOMInputStream$BOM;->NONE:Lcom/stackoverflow/answer/UnicodeBOMInputStream$BOM;

    .line 52
    new-instance v0, Lcom/stackoverflow/answer/UnicodeBOMInputStream$BOM;

    const/4 v1, 0x3

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Lcom/stackoverflow/answer/UnicodeBOMInputStream$BOM;-><init>([BLjava/lang/String;)V

    sput-object v0, Lcom/stackoverflow/answer/UnicodeBOMInputStream$BOM;->UTF_8:Lcom/stackoverflow/answer/UnicodeBOMInputStream$BOM;

    .line 60
    new-instance v0, Lcom/stackoverflow/answer/UnicodeBOMInputStream$BOM;

    new-array v1, v3, [B

    fill-array-data v1, :array_1

    const-string v2, "UTF-16 little-endian"

    invoke-direct {v0, v1, v2}, Lcom/stackoverflow/answer/UnicodeBOMInputStream$BOM;-><init>([BLjava/lang/String;)V

    sput-object v0, Lcom/stackoverflow/answer/UnicodeBOMInputStream$BOM;->UTF_16_LE:Lcom/stackoverflow/answer/UnicodeBOMInputStream$BOM;

    .line 67
    new-instance v0, Lcom/stackoverflow/answer/UnicodeBOMInputStream$BOM;

    new-array v1, v3, [B

    fill-array-data v1, :array_2

    const-string v2, "UTF-16 big-endian"

    invoke-direct {v0, v1, v2}, Lcom/stackoverflow/answer/UnicodeBOMInputStream$BOM;-><init>([BLjava/lang/String;)V

    sput-object v0, Lcom/stackoverflow/answer/UnicodeBOMInputStream$BOM;->UTF_16_BE:Lcom/stackoverflow/answer/UnicodeBOMInputStream$BOM;

    .line 74
    new-instance v0, Lcom/stackoverflow/answer/UnicodeBOMInputStream$BOM;

    new-array v1, v4, [B

    fill-array-data v1, :array_3

    const-string v2, "UTF-32 little-endian"

    invoke-direct {v0, v1, v2}, Lcom/stackoverflow/answer/UnicodeBOMInputStream$BOM;-><init>([BLjava/lang/String;)V

    sput-object v0, Lcom/stackoverflow/answer/UnicodeBOMInputStream$BOM;->UTF_32_LE:Lcom/stackoverflow/answer/UnicodeBOMInputStream$BOM;

    .line 83
    new-instance v0, Lcom/stackoverflow/answer/UnicodeBOMInputStream$BOM;

    new-array v1, v4, [B

    fill-array-data v1, :array_4

    const-string v2, "UTF-32 big-endian"

    invoke-direct {v0, v1, v2}, Lcom/stackoverflow/answer/UnicodeBOMInputStream$BOM;-><init>([BLjava/lang/String;)V

    sput-object v0, Lcom/stackoverflow/answer/UnicodeBOMInputStream$BOM;->UTF_32_BE:Lcom/stackoverflow/answer/UnicodeBOMInputStream$BOM;

    return-void

    :cond_0
    move v0, v1

    .line 42
    goto :goto_0

    .line 52
    nop

    :array_0
    .array-data 1
        -0x11t
        -0x45t
        -0x41t
    .end array-data

    .line 60
    :array_1
    .array-data 1
        -0x1t
        -0x2t
    .end array-data

    .line 67
    nop

    :array_2
    .array-data 1
        -0x2t
        -0x1t
    .end array-data

    .line 74
    nop

    :array_3
    .array-data 1
        -0x1t
        -0x2t
        0x0t
        0x0t
    .end array-data

    .line 83
    :array_4
    .array-data 1
        0x0t
        0x0t
        -0x2t
        -0x1t
    .end array-data
.end method

.method private constructor <init>([BLjava/lang/String;)V
    .locals 2
    .param p1, "bom"    # [B
    .param p2, "description"    # Ljava/lang/String;

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    sget-boolean v0, Lcom/stackoverflow/answer/UnicodeBOMInputStream$BOM;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "invalid BOM: null is not allowed"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 115
    :cond_0
    sget-boolean v0, Lcom/stackoverflow/answer/UnicodeBOMInputStream$BOM;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "invalid description: null is not allowed"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 116
    :cond_1
    sget-boolean v0, Lcom/stackoverflow/answer/UnicodeBOMInputStream$BOM;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "invalid description: empty string is not allowed"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 118
    :cond_2
    iput-object p1, p0, Lcom/stackoverflow/answer/UnicodeBOMInputStream$BOM;->bytes:[B

    .line 119
    iput-object p2, p0, Lcom/stackoverflow/answer/UnicodeBOMInputStream$BOM;->description:Ljava/lang/String;

    .line 120
    return-void
.end method


# virtual methods
.method public final getBytes()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 103
    iget-object v2, p0, Lcom/stackoverflow/answer/UnicodeBOMInputStream$BOM;->bytes:[B

    array-length v0, v2

    .line 104
    .local v0, "length":I
    new-array v1, v0, [B

    .line 107
    .local v1, "result":[B
    iget-object v2, p0, Lcom/stackoverflow/answer/UnicodeBOMInputStream$BOM;->bytes:[B

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 109
    return-object v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/stackoverflow/answer/UnicodeBOMInputStream$BOM;->description:Ljava/lang/String;

    return-object v0
.end method
