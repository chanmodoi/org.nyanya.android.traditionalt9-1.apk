.class Lorg/nyanya/android/traditionalt9/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static printFlags(I)V
    .locals 7
    .param p0, "inputType"    # I

    .prologue
    const v6, 0x8000

    const/16 v5, 0x2000

    const/16 v4, 0x1000

    const/16 v3, 0x20

    const/16 v2, 0x10

    .line 10
    and-int/lit8 v0, p0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 11
    const-string v0, "Utils.printFlags"

    const-string v1, "TYPE_CLASS_DATETIME"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    :cond_0
    and-int/lit8 v0, p0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 13
    const-string v0, "Utils.printFlags"

    const-string v1, "TYPE_CLASS_NUMBER"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    :cond_1
    and-int/lit8 v0, p0, 0x3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 15
    const-string v0, "Utils.printFlags"

    const-string v1, "TYPE_CLASS_PHONE"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    :cond_2
    and-int/lit8 v0, p0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 17
    const-string v0, "Utils.printFlags"

    const-string v1, "TYPE_CLASS_TEXT"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    :cond_3
    and-int/lit8 v0, p0, 0x10

    if-ne v0, v2, :cond_4

    .line 19
    const-string v0, "Utils.printFlags"

    const-string v1, "TYPE_DATETIME_VARIATION_DATE"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    :cond_4
    and-int/lit8 v0, p0, 0x0

    if-nez v0, :cond_5

    .line 21
    const-string v0, "Utils.printFlags"

    const-string v1, "TYPE_DATETIME_VARIATION_NORMAL"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    :cond_5
    and-int/lit8 v0, p0, 0x20

    if-ne v0, v3, :cond_6

    .line 23
    const-string v0, "Utils.printFlags"

    const-string v1, "YPE_DATETIME_VARIATION_TIME"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    :cond_6
    and-int/lit8 v0, p0, 0x0

    if-nez v0, :cond_7

    .line 25
    const-string v0, "Utils.printFlags"

    const-string v1, "TYPE_NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    :cond_7
    and-int/lit16 v0, p0, 0x2000

    if-ne v0, v5, :cond_8

    .line 27
    const-string v0, "Utils.printFlags"

    const-string v1, "TYPE_NUMBER_FLAG_DECIMAL"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    :cond_8
    and-int/lit16 v0, p0, 0x1000

    if-ne v0, v4, :cond_9

    .line 29
    const-string v0, "Utils.printFlags"

    const-string v1, "TYPE_NUMBER_FLAG_SIGNED"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    :cond_9
    const/high16 v0, 0x10000

    and-int/2addr v0, p0

    const/high16 v1, 0x10000

    if-ne v0, v1, :cond_a

    .line 31
    const-string v0, "Utils.printFlags"

    const-string v1, "TYPE_TEXT_FLAG_AUTO_COMPLETE"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    :cond_a
    and-int v0, p0, v6

    if-ne v0, v6, :cond_b

    .line 33
    const-string v0, "Utils.printFlags"

    const-string v1, "TYPE_TEXT_FLAG_AUTO_CORRECT"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    :cond_b
    and-int/lit16 v0, p0, 0x1000

    if-ne v0, v4, :cond_c

    .line 35
    const-string v0, "Utils.printFlags"

    const-string v1, "TYPE_TEXT_FLAG_CAP_CHARACTERS"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    :cond_c
    and-int/lit16 v0, p0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_d

    .line 37
    const-string v0, "Utils.printFlags"

    const-string v1, "TYPE_TEXT_FLAG_CAP_SENTENCES"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    :cond_d
    and-int/lit16 v0, p0, 0x2000

    if-ne v0, v5, :cond_e

    .line 39
    const-string v0, "Utils.printFlags"

    const-string v1, "TYPE_TEXT_FLAG_CAP_WORDS"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    :cond_e
    const/high16 v0, 0x40000

    and-int/2addr v0, p0

    const/high16 v1, 0x40000

    if-ne v0, v1, :cond_f

    .line 41
    const-string v0, "Utils.printFlags"

    const-string v1, "TYPE_TEXT_FLAG_IME_MULTI_LINE"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    :cond_f
    const/high16 v0, 0x20000

    and-int/2addr v0, p0

    const/high16 v1, 0x20000

    if-ne v0, v1, :cond_10

    .line 43
    const-string v0, "Utils.printFlags"

    const-string v1, "TYPE_TEXT_FLAG_MULTI_LINE"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    :cond_10
    const/high16 v0, 0x80000

    and-int/2addr v0, p0

    const/high16 v1, 0x80000

    if-ne v0, v1, :cond_11

    .line 45
    const-string v0, "Utils.printFlags"

    const-string v1, "TYPE_TEXT_FLAG_NO_SUGGESTIONS"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    :cond_11
    and-int/lit8 v0, p0, 0x20

    if-ne v0, v3, :cond_12

    .line 47
    const-string v0, "Utils.printFlags"

    const-string v1, "TYPE_TEXT_VARIATION_EMAIL_ADDRESS"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    :cond_12
    and-int/lit8 v0, p0, 0x30

    const/16 v1, 0x30

    if-ne v0, v1, :cond_13

    .line 49
    const-string v0, "Utils.printFlags"

    const-string v1, "TYPE_TEXT_VARIATION_EMAIL_SUBJECT"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :cond_13
    and-int/lit16 v0, p0, 0xb0

    const/16 v1, 0xb0

    if-ne v0, v1, :cond_14

    .line 51
    const-string v0, "Utils.printFlags"

    const-string v1, "TYPE_TEXT_VARIATION_FILTER"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :cond_14
    and-int/lit8 v0, p0, 0x50

    const/16 v1, 0x50

    if-ne v0, v1, :cond_15

    .line 53
    const-string v0, "Utils.printFlags"

    const-string v1, "TYPE_TEXT_VARIATION_LONG_MESSAGE"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :cond_15
    and-int/lit8 v0, p0, 0x0

    if-nez v0, :cond_16

    .line 55
    const-string v0, "Utils.printFlags"

    const-string v1, "TYPE_TEXT_VARIATION_NORMAL"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :cond_16
    and-int/lit16 v0, p0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_17

    .line 57
    const-string v0, "Utils.printFlags"

    const-string v1, "TYPE_TEXT_VARIATION_PASSWORD"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :cond_17
    and-int/lit8 v0, p0, 0x60

    const/16 v1, 0x60

    if-ne v0, v1, :cond_18

    .line 59
    const-string v0, "Utils.printFlags"

    const-string v1, "TYPE_TEXT_VARIATION_PERSON_NAME"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :cond_18
    and-int/lit16 v0, p0, 0xc0

    const/16 v1, 0xc0

    if-ne v0, v1, :cond_19

    .line 61
    const-string v0, "Utils.printFlags"

    const-string v1, "TYPE_TEXT_VARIATION_PHONETIC"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :cond_19
    and-int/lit8 v0, p0, 0x70

    const/16 v1, 0x70

    if-ne v0, v1, :cond_1a

    .line 63
    const-string v0, "Utils.printFlags"

    const-string v1, "TYPE_TEXT_VARIATION_POSTAL_ADDRESS"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_1a
    and-int/lit8 v0, p0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_1b

    .line 65
    const-string v0, "Utils.printFlags"

    const-string v1, "TYPE_TEXT_VARIATION_SHORT_MESSAGE"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_1b
    and-int/lit8 v0, p0, 0x10

    if-ne v0, v2, :cond_1c

    .line 67
    const-string v0, "Utils.printFlags"

    const-string v1, "TYPE_TEXT_VARIATION_URI"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :cond_1c
    and-int/lit16 v0, p0, 0x90

    const/16 v1, 0x90

    if-ne v0, v1, :cond_1d

    .line 69
    const-string v0, "Utils.printFlags"

    const-string v1, "TYPE_TEXT_VARIATION_VISIBLE_PASSWORD"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :cond_1d
    and-int/lit16 v0, p0, 0xa0

    const/16 v1, 0xa0

    if-ne v0, v1, :cond_1e

    .line 71
    const-string v0, "Utils.printFlags"

    const-string v1, "TYPE_TEXT_VARIATION_WEB_EDIT_TEXT"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_1e
    return-void
.end method
