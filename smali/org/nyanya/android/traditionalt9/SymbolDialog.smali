.class public Lorg/nyanya/android/traditionalt9/SymbolDialog;
.super Lorg/nyanya/android/traditionalt9/AbsSymDialog;
.source "SymbolDialog.java"


# static fields
.field private static final MAX_PAGE:I

.field private static final symbols:[C


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 8
    const/16 v0, 0x20

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lorg/nyanya/android/traditionalt9/SymbolDialog;->symbols:[C

    .line 11
    sget-object v0, Lorg/nyanya/android/traditionalt9/SymbolDialog;->symbols:[C

    array-length v0, v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x4024000000000000L

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    sput v0, Lorg/nyanya/android/traditionalt9/SymbolDialog;->MAX_PAGE:I

    return-void

    .line 8
    :array_0
    .array-data 2
        0x2es
        0x2cs
        0x21s
        0x3fs
        0x24s
        0x26s
        0x25s
        0x23s
        0x40s
        0x22s
        0x27s
        0x3as
        0x3bs
        0x28s
        0x29s
        0x2fs
        0x5cs
        0x2ds
        0x2bs
        0x3ds
        0x2as
        0x3cs
        0x3es
        0x5bs
        0x5ds
        0x7bs
        0x7ds
        0x5es
        0x7cs
        0x5fs
        0x7es
        0x60s
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 0
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "mv"    # Landroid/view/View;

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Lorg/nyanya/android/traditionalt9/AbsSymDialog;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 15
    return-void
.end method


# virtual methods
.method getContentDescription()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getMaxPage()I
    .locals 1

    .prologue
    .line 39
    sget v0, Lorg/nyanya/android/traditionalt9/SymbolDialog;->MAX_PAGE:I

    return v0
.end method

.method protected getSymbol(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 24
    sget-object v0, Lorg/nyanya/android/traditionalt9/SymbolDialog;->symbols:[C

    aget-char v0, v0, p1

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getSymbolSize()I
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lorg/nyanya/android/traditionalt9/SymbolDialog;->symbols:[C

    array-length v0, v0

    return v0
.end method

.method protected getTitleText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 29
    iget-object v0, p0, Lorg/nyanya/android/traditionalt9/SymbolDialog;->context:Landroid/content/Context;

    const v1, 0x7f080037

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
