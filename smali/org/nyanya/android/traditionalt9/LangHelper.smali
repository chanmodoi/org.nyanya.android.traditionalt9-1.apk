.class public Lorg/nyanya/android/traditionalt9/LangHelper;
.super Ljava/lang/Object;
.source "LangHelper.java"


# static fields
.field protected static final EN:I = 0x0

.field protected static final ICONMAP:[[[I

.field protected static final LANGS:[Ljava/lang/String;

.field protected static final LOCALES:[Ljava/util/Locale;

.field protected static final NLANGS:I

.field protected static final RU:I = 0x1

.field protected static final RUSSIAN:Ljava/util/Locale;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const v7, 0x7f02000c

    const/4 v6, 0x2

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 8
    new-instance v0, Ljava/util/Locale;

    const-string v1, "ru"

    const-string v2, "RU"

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/nyanya/android/traditionalt9/LangHelper;->RUSSIAN:Ljava/util/Locale;

    .line 11
    new-array v0, v6, [Ljava/util/Locale;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    aput-object v1, v0, v3

    sget-object v1, Lorg/nyanya/android/traditionalt9/LangHelper;->RUSSIAN:Ljava/util/Locale;

    aput-object v1, v0, v4

    sput-object v0, Lorg/nyanya/android/traditionalt9/LangHelper;->LOCALES:[Ljava/util/Locale;

    .line 12
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "EN"

    aput-object v1, v0, v3

    const-string v1, "RU"

    aput-object v1, v0, v4

    sput-object v0, Lorg/nyanya/android/traditionalt9/LangHelper;->LANGS:[Ljava/lang/String;

    .line 14
    sget-object v0, Lorg/nyanya/android/traditionalt9/LangHelper;->LANGS:[Ljava/lang/String;

    array-length v0, v0

    sput v0, Lorg/nyanya/android/traditionalt9/LangHelper;->NLANGS:I

    .line 22
    new-array v0, v6, [[[I

    new-array v1, v5, [[I

    new-array v2, v5, [I

    fill-array-data v2, :array_0

    aput-object v2, v1, v3

    new-array v2, v5, [I

    fill-array-data v2, :array_1

    aput-object v2, v1, v4

    new-array v2, v4, [I

    aput v7, v2, v3

    aput-object v2, v1, v6

    aput-object v1, v0, v3

    new-array v1, v5, [[I

    new-array v2, v5, [I

    fill-array-data v2, :array_2

    aput-object v2, v1, v3

    new-array v2, v5, [I

    fill-array-data v2, :array_3

    aput-object v2, v1, v4

    new-array v2, v4, [I

    aput v7, v2, v3

    aput-object v2, v1, v6

    aput-object v1, v0, v4

    sput-object v0, Lorg/nyanya/android/traditionalt9/LangHelper;->ICONMAP:[[[I

    return-void

    :array_0
    .array-data 4
        0x7f020006
        0x7f020007
        0x7f020008
    .end array-data

    :array_1
    .array-data 4
        0x7f020009
        0x7f02000a
        0x7f02000b
    .end array-data

    :array_2
    .array-data 4
        0x7f02000d
        0x7f02000e
        0x7f02000f
    .end array-data

    :array_3
    .array-data 4
        0x7f020010
        0x7f020011
        0x7f020012
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static buildLangs(Ljava/lang/CharSequence;)[I
    .locals 9
    .param p0, "s"    # Ljava/lang/CharSequence;

    .prologue
    .line 38
    invoke-static {p0}, Lpl/wavesoftware/widget/MultiSelectListPreference;->defaultunpack2Int(Ljava/lang/CharSequence;)[I

    move-result-object v3

    .line 39
    .local v3, "ia":[I
    const/4 v7, 0x0

    .line 41
    .local v7, "num":I
    move-object v0, v3

    .local v0, "arr$":[I
    array-length v6, v0

    .local v6, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v6, :cond_1

    aget v1, v0, v2

    .line 42
    .local v1, "i":I
    if-ltz v1, :cond_0

    sget v8, Lorg/nyanya/android/traditionalt9/LangHelper;->NLANGS:I

    if-ge v1, v8, :cond_0

    .line 43
    add-int/lit8 v7, v7, 0x1

    .line 41
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 46
    .end local v1    # "i":I
    :cond_1
    new-array v4, v7, [I

    .line 47
    .local v4, "ian":[I
    const/4 v5, 0x0

    .line 48
    .local v5, "iansize":I
    move-object v0, v3

    array-length v6, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v6, :cond_3

    aget v1, v0, v2

    .line 49
    .restart local v1    # "i":I
    if-ltz v1, :cond_2

    sget v8, Lorg/nyanya/android/traditionalt9/LangHelper;->NLANGS:I

    if-ge v1, v8, :cond_2

    .line 50
    aput v1, v4, v5

    .line 51
    add-int/lit8 v5, v5, 0x1

    .line 48
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 54
    .end local v1    # "i":I
    :cond_3
    return-object v4
.end method

.method protected static findIndex([II)I
    .locals 2
    .param p0, "ia"    # [I
    .param p1, "target"    # I

    .prologue
    .line 58
    const/4 v0, 0x0

    .local v0, "x":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 59
    aget v1, p0, v0

    if-ne v1, p1, :cond_0

    .line 62
    .end local v0    # "x":I
    :goto_1
    return v0

    .line 58
    .restart local v0    # "x":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 62
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method protected static getString(I)Ljava/lang/String;
    .locals 1
    .param p0, "lang"    # I

    .prologue
    .line 17
    sget-object v0, Lorg/nyanya/android/traditionalt9/LangHelper;->LANGS:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0
.end method
