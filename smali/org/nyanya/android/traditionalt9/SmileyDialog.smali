.class public Lorg/nyanya/android/traditionalt9/SmileyDialog;
.super Lorg/nyanya/android/traditionalt9/AbsSymDialog;
.source "SmileyDialog.java"


# static fields
.field private static final MAX_PAGE:I

.field private static final symbols:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 8
    const/16 v0, 0x3c

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ":-)"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, ":o)"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, ":]"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, ":3"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, ":c)"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, ":>"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "=]"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "=)"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, ":}"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, ":-D"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "8-D"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "X-D"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "=-D"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "B^D"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "<:-)"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, ">:-["

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, ":-("

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, ":-<"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, ":o("

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, ":{"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, ":\'-("

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, ":\'-)"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, ":@"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "D:<"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "D8"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "v.v"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "D-\':"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, ">:O"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, ":-O"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "o_0"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, ":*"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, ";-)"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, ";-D"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, ">:-P"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, ":-P"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "X-P"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "=p"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, ">:-/"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, ":-/"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, ":-."

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, ":S"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, ">.<"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, ":-|"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, ":$"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, ":-X"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, ":-#"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, ":-%"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, ":\u0421"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, ":-E"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, ":-*"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "0:-3"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "0:-)"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, ">;-)"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, ">:-)"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, ">_>"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "*<|:-)"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "\\o/"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "<3"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "</3"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "=-3"

    aput-object v2, v0, v1

    sput-object v0, Lorg/nyanya/android/traditionalt9/SmileyDialog;->symbols:[Ljava/lang/String;

    .line 17
    sget-object v0, Lorg/nyanya/android/traditionalt9/SmileyDialog;->symbols:[Ljava/lang/String;

    array-length v0, v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x4024000000000000L

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    sput v0, Lorg/nyanya/android/traditionalt9/SmileyDialog;->MAX_PAGE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 0
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "mv"    # Landroid/view/View;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lorg/nyanya/android/traditionalt9/AbsSymDialog;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 22
    return-void
.end method


# virtual methods
.method getContentDescription()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 26
    iget-object v0, p0, Lorg/nyanya/android/traditionalt9/SmileyDialog;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getMaxPage()I
    .locals 1

    .prologue
    .line 46
    sget v0, Lorg/nyanya/android/traditionalt9/SmileyDialog;->MAX_PAGE:I

    return v0
.end method

.method protected getSymbol(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 31
    sget-object v0, Lorg/nyanya/android/traditionalt9/SmileyDialog;->symbols:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method protected getSymbolSize()I
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lorg/nyanya/android/traditionalt9/SmileyDialog;->symbols:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method protected getTitleText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 36
    iget-object v0, p0, Lorg/nyanya/android/traditionalt9/SmileyDialog;->context:Landroid/content/Context;

    const v1, 0x7f080036

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
