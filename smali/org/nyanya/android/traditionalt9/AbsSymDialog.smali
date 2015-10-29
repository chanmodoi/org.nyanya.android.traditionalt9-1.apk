.class public abstract Lorg/nyanya/android/traditionalt9/AbsSymDialog;
.super Landroid/app/Dialog;
.source "AbsSymDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final buttons:[I

.field private static final buttons2:[I


# instance fields
.field private MAX_PAGE:I

.field protected context:Landroid/content/Context;

.field private mainview:Landroid/view/View;

.field private pagenum:I

.field private pageoffset:I

.field private started:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/nyanya/android/traditionalt9/AbsSymDialog;->buttons:[I

    .line 32
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/nyanya/android/traditionalt9/AbsSymDialog;->buttons2:[I

    return-void

    .line 26
    :array_0
    .array-data 4
        0x7f0b000c
        0x7f0b000d
        0x7f0b000e
        0x7f0b000f
        0x7f0b0010
        0x7f0b0011
        0x7f0b0012
        0x7f0b0013
        0x7f0b0014
        0x7f0b0016
    .end array-data

    .line 32
    :array_1
    .array-data 4
        0x7f0b0015
        0x7f0b0017
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 7
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "mv"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    .line 38
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 20
    iput v6, p0, Lorg/nyanya/android/traditionalt9/AbsSymDialog;->pagenum:I

    .line 21
    iget v5, p0, Lorg/nyanya/android/traditionalt9/AbsSymDialog;->pagenum:I

    add-int/lit8 v5, v5, -0x1

    mul-int/lit8 v5, v5, 0xa

    iput v5, p0, Lorg/nyanya/android/traditionalt9/AbsSymDialog;->pageoffset:I

    .line 39
    iput-object p1, p0, Lorg/nyanya/android/traditionalt9/AbsSymDialog;->context:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lorg/nyanya/android/traditionalt9/AbsSymDialog;->mainview:Landroid/view/View;

    .line 41
    iput-boolean v6, p0, Lorg/nyanya/android/traditionalt9/AbsSymDialog;->started:Z

    .line 42
    invoke-virtual {p0, p2}, Lorg/nyanya/android/traditionalt9/AbsSymDialog;->setContentView(Landroid/view/View;)V

    .line 45
    sget-object v0, Lorg/nyanya/android/traditionalt9/AbsSymDialog;->buttons:[I

    .local v0, "arr$":[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget v1, v0, v3

    .line 46
    .local v1, "butt":I
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 47
    .local v2, "button":Landroid/view/View;
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 49
    .end local v1    # "butt":I
    .end local v2    # "button":Landroid/view/View;
    :cond_0
    sget-object v0, Lorg/nyanya/android/traditionalt9/AbsSymDialog;->buttons2:[I

    array-length v4, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_1

    aget v1, v0, v3

    .line 50
    .restart local v1    # "butt":I
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 51
    .restart local v2    # "button":Landroid/view/View;
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 53
    .end local v1    # "butt":I
    .end local v2    # "button":Landroid/view/View;
    :cond_1
    invoke-virtual {p0}, Lorg/nyanya/android/traditionalt9/AbsSymDialog;->getMaxPage()I

    move-result v5

    iput v5, p0, Lorg/nyanya/android/traditionalt9/AbsSymDialog;->MAX_PAGE:I

    .line 54
    return-void
.end method

.method private onKey(I)V
    .locals 1
    .param p1, "keyCode"    # I

    .prologue
    .line 244
    packed-switch p1, :pswitch_data_0

    .line 282
    :goto_0
    return-void

    .line 246
    :pswitch_0
    iget v0, p0, Lorg/nyanya/android/traditionalt9/AbsSymDialog;->pageoffset:I

    invoke-direct {p0, v0}, Lorg/nyanya/android/traditionalt9/AbsSymDialog;->sendChar(I)V

    goto :goto_0

    .line 249
    :pswitch_1
    iget v0, p0, Lorg/nyanya/android/traditionalt9/AbsSymDialog;->pageoffset:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lorg/nyanya/android/traditionalt9/AbsSymDialog;->sendChar(I)V

    goto :goto_0

    .line 252
    :pswitch_2
    iget v0, p0, Lorg/nyanya/android/traditionalt9/AbsSymDialog;->pageoffset:I

    add-int/lit8 v0, v0, 0x2

    invoke-direct {p0, v0}, Lorg/nyanya/android/traditionalt9/AbsSymDialog;->sendChar(I)V

    goto :goto_0

    .line 255
    :pswitch_3
    iget v0, p0, Lorg/nyanya/android/traditionalt9/AbsSymDialog;->pageoffset:I

    add-int/lit8 v0, v0, 0x3

    invoke-direct {p0, v0}, Lorg/nyanya/android/traditionalt9/AbsSymDialog;->sendChar(I)V

    goto :goto_0

    .line 258
    :pswitch_4
    iget v0, p0, Lorg/nyanya/android/traditionalt9/AbsSymDialog;->pageoffset:I

    add-int/lit8 v0, v0, 0x4

    invoke-direct {p0, v0}, Lorg/nyanya/android/traditionalt9/AbsSymDialog;->sendChar(I)V

    goto :goto_0

    .line 261
    :pswitch_5
    iget v0, p0, Lorg/nyanya/android/traditionalt9/AbsSymDialog;->pageoffset:I

    add-int/lit8 v0, v0, 0x5

    invoke-direct {p0, v0}, Lorg/nyanya/android/traditionalt9/AbsSymDialog;->sendChar(I)V

    goto :goto_0

    .line 264
    :pswitch_6
    iget v0, p0, Lorg/nyanya/android/traditionalt9/AbsSymDialog;->pageoffset:I

    add-int/lit8 v0, v0, 0x6

    invoke-direct {p0, v0}, Lorg/nyanya/android/traditionalt9/AbsSymDialog;->sendChar(I)V

    goto :goto_0

    .line 267
    :pswitch_7
    iget v0, p0, Lorg/nyanya/android/traditionalt9/AbsSymDialog;->pageoffset:I

    add-int/lit8 v0, v0, 0x7

    invoke-direct {p0, v0}, Lorg/nyanya/android/traditionalt9/AbsSymDialog;->sendChar(I)V

    goto :goto_0

    .line 270
    :pswitch_8
    iget v0, p0, Lorg/nyanya/android/traditionalt9/AbsSymDialog;->pageoffset:I

    add-int/lit8 v0, v0, 0x8

    invoke-direct {p0, v0}, Lorg/nyanya/android/traditionalt9/AbsSymDialog;->sendChar(I)V

    goto :goto_0

    .line 273
    :pswitch_9
    iget v0, p0, Lorg/nyanya/android/traditionalt9/AbsSymDialog;->pageoffset:I

    add-int/lit8 v0, v0, 0x9

    invoke-direct {p0, v0}, Lorg/nyanya/android/traditionalt9/AbsSymDialog;->sendChar(I)V

    goto :goto_0

    .line 276
    :pswitch_a
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lorg/nyanya/android/traditionalt9/AbsSymDialog;->pageChange(I)V

    goto :goto_0

    .line 279
    :pswitch_b
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/nyanya/android/traditionalt9/AbsSymDialog;->pageChange(I)V

    goto :goto_0

    .line 244
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_9
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method private pageChange(I)V
    .locals 3
    .param p1, "amt"    # I

    .prologue
    const/4 v2, 0x1

    .line 121
    iget v0, p0, Lorg/nyanya/android/traditionalt9/AbsSymDialog;->pagenum:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/nyanya/android/traditionalt9/AbsSymDialog;->pagenum:I

    .line 122
    iget v0, p0, Lorg/nyanya/android/traditionalt9/AbsSymDialog;->pagenum:I

    iget v1, p0, Lorg/nyanya/android/traditionalt9/AbsSymDialog;->MAX_PAGE:I

    if-le v0, v1, :cond_1

    .line 123
    iput v2, p0, Lorg/nyanya/android/traditionalt9/AbsSymDialog;->pagenum:I

    .line 127
    :cond_0
    :goto_0
    iget v0, p0, Lorg/nyanya/android/traditionalt9/AbsSymDialog;->pagenum:I

    add-int/lit8 v0, v0, -0x1

    mul-int/lit8 v0, v0, 0xa

    iput v0, p0, Lorg/nyanya/android/traditionalt9/AbsSymDialog;->pageoffset:I

    .line 128
    invoke-direct {p0}, Lorg/nyanya/android/traditionalt9/AbsSymDialog;->updateButtons()V

    .line 129
    return-void

    .line 124
    :cond_1
    iget v0, p0, Lorg/nyanya/android/traditionalt9/AbsSymDialog;->pagenum:I

    if-ge v0, v2, :cond_0

    .line 125
    iget v0, p0, Lorg/nyanya/android/traditionalt9/AbsSymDialog;->MAX_PAGE:I

    iput v0, p0, Lorg/nyanya/android/traditionalt9/AbsSymDialog;->pagenum:I

    goto :goto_0
.end method

.method private sendChar(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 111
    invoke-virtual {p0}, Lorg/nyanya/android/traditionalt9/AbsSymDialog;->getSymbolSize()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 112
    iget-object v0, p0, Lorg/nyanya/android/traditionalt9/AbsSymDialog;->context:Landroid/content/Context;

    check-cast v0, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    invoke-virtual {p0, p1}, Lorg/nyanya/android/traditionalt9/AbsSymDialog;->getSymbol(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->onText(Ljava/lang/CharSequence;)V

    .line 114
    const/4 v0, 0x1

    iput v0, p0, Lorg/nyanya/android/traditionalt9/AbsSymDialog;->pagenum:I

    .line 115
    iget v0, p0, Lorg/nyanya/android/traditionalt9/AbsSymDialog;->pagenum:I

    add-int/lit8 v0, v0, -0x1

    mul-int/lit8 v0, v0, 0xa

    iput v0, p0, Lorg/nyanya/android/traditionalt9/AbsSymDialog;->pageoffset:I

    .line 116
    invoke-virtual {p0}, Lorg/nyanya/android/traditionalt9/AbsSymDialog;->dismiss()V

    .line 118
    :cond_0
    return-void
.end method

.method private updateButtons()V
    .locals 15

    .prologue
    const/4 v11, 0x2

    const/4 v14, 0x1

    const/4 v13, 0x0

    .line 133
    const-string v7, "%s\t\t%s"

    new-array v8, v11, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/nyanya/android/traditionalt9/AbsSymDialog;->getTitleText()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v13

    iget-object v9, p0, Lorg/nyanya/android/traditionalt9/AbsSymDialog;->context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f080039

    new-array v11, v11, [Ljava/lang/Object;

    iget v12, p0, Lorg/nyanya/android/traditionalt9/AbsSymDialog;->pagenum:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v13

    iget v12, p0, Lorg/nyanya/android/traditionalt9/AbsSymDialog;->MAX_PAGE:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v14

    invoke-virtual {v9, v10, v11}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v14

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/nyanya/android/traditionalt9/AbsSymDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 136
    iget v4, p0, Lorg/nyanya/android/traditionalt9/AbsSymDialog;->pageoffset:I

    .line 137
    .local v4, "symbx":I
    add-int/lit8 v3, v4, 0x9

    .line 138
    .local v3, "stop":I
    move v2, v3

    .line 139
    .local v2, "nomore":I
    invoke-virtual {p0}, Lorg/nyanya/android/traditionalt9/AbsSymDialog;->getSymbolSize()I

    move-result v5

    .line 140
    .local v5, "symsize":I
    add-int/lit8 v7, v5, -0x1

    if-lt v2, v7, :cond_0

    .line 141
    add-int/lit8 v2, v5, -0x1

    .line 144
    :cond_0
    invoke-virtual {p0}, Lorg/nyanya/android/traditionalt9/AbsSymDialog;->getContentDescription()[Ljava/lang/String;

    move-result-object v1

    .line 146
    .local v1, "cd":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "buttx":I
    :goto_0
    if-gt v4, v3, :cond_3

    .line 149
    if-le v4, v2, :cond_2

    .line 150
    iget-object v7, p0, Lorg/nyanya/android/traditionalt9/AbsSymDialog;->mainview:Landroid/view/View;

    sget-object v8, Lorg/nyanya/android/traditionalt9/AbsSymDialog;->buttons:[I

    aget v8, v8, v0

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const-string v8, ""

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 146
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 152
    :cond_2
    iget-object v7, p0, Lorg/nyanya/android/traditionalt9/AbsSymDialog;->mainview:Landroid/view/View;

    sget-object v8, Lorg/nyanya/android/traditionalt9/AbsSymDialog;->buttons:[I

    aget v8, v8, v0

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 153
    .local v6, "tv":Landroid/widget/TextView;
    invoke-virtual {p0, v4}, Lorg/nyanya/android/traditionalt9/AbsSymDialog;->getSymbol(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    if-eqz v1, :cond_1

    .line 155
    aget-object v7, v1, v4

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 160
    .end local v6    # "tv":Landroid/widget/TextView;
    :cond_3
    return-void
.end method


# virtual methods
.method protected doShow(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 286
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/nyanya/android/traditionalt9/AbsSymDialog;->started:Z

    .line 287
    invoke-virtual {p0}, Lorg/nyanya/android/traditionalt9/AbsSymDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 288
    .local v2, "win":Landroid/view/Window;
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 289
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    iput-object v3, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 290
    const/16 v3, 0x3eb

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 291
    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 292
    const/high16 v3, 0x20000

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 293
    invoke-direct {p0}, Lorg/nyanya/android/traditionalt9/AbsSymDialog;->updateButtons()V

    .line 295
    :try_start_0
    invoke-virtual {p0}, Lorg/nyanya/android/traditionalt9/AbsSymDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    :goto_0
    return-void

    .line 296
    :catch_0
    move-exception v0

    .line 297
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "AbsSymDialog"

    const-string v4, "Cannot create Dialog:"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    const-string v3, "AbsSymDialog"

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method abstract getContentDescription()[Ljava/lang/String;
.end method

.method protected abstract getMaxPage()I
.end method

.method protected abstract getSymbol(I)Ljava/lang/String;
.end method

.method protected abstract getSymbolSize()I
.end method

.method protected abstract getTitleText()Ljava/lang/String;
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 62
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 101
    :goto_0
    return-void

    .line 64
    :pswitch_0
    iget v0, p0, Lorg/nyanya/android/traditionalt9/AbsSymDialog;->pageoffset:I

    invoke-direct {p0, v0}, Lorg/nyanya/android/traditionalt9/AbsSymDialog;->sendChar(I)V

    goto :goto_0

    .line 67
    :pswitch_1
    iget v0, p0, Lorg/nyanya/android/traditionalt9/AbsSymDialog;->pageoffset:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lorg/nyanya/android/traditionalt9/AbsSymDialog;->sendChar(I)V

    goto :goto_0

    .line 70
    :pswitch_2
    iget v0, p0, Lorg/nyanya/android/traditionalt9/AbsSymDialog;->pageoffset:I

    add-int/lit8 v0, v0, 0x2

    invoke-direct {p0, v0}, Lorg/nyanya/android/traditionalt9/AbsSymDialog;->sendChar(I)V

    goto :goto_0

    .line 73
    :pswitch_3
    iget v0, p0, Lorg/nyanya/android/traditionalt9/AbsSymDialog;->pageoffset:I

    add-int/lit8 v0, v0, 0x3

    invoke-direct {p0, v0}, Lorg/nyanya/android/traditionalt9/AbsSymDialog;->sendChar(I)V

    goto :goto_0

    .line 76
    :pswitch_4
    iget v0, p0, Lorg/nyanya/android/traditionalt9/AbsSymDialog;->pageoffset:I

    add-int/lit8 v0, v0, 0x4

    invoke-direct {p0, v0}, Lorg/nyanya/android/traditionalt9/AbsSymDialog;->sendChar(I)V

    goto :goto_0

    .line 79
    :pswitch_5
    iget v0, p0, Lorg/nyanya/android/traditionalt9/AbsSymDialog;->pageoffset:I

    add-int/lit8 v0, v0, 0x5

    invoke-direct {p0, v0}, Lorg/nyanya/android/traditionalt9/AbsSymDialog;->sendChar(I)V

    goto :goto_0

    .line 82
    :pswitch_6
    iget v0, p0, Lorg/nyanya/android/traditionalt9/AbsSymDialog;->pageoffset:I

    add-int/lit8 v0, v0, 0x6

    invoke-direct {p0, v0}, Lorg/nyanya/android/traditionalt9/AbsSymDialog;->sendChar(I)V

    goto :goto_0

    .line 85
    :pswitch_7
    iget v0, p0, Lorg/nyanya/android/traditionalt9/AbsSymDialog;->pageoffset:I

    add-int/lit8 v0, v0, 0x7

    invoke-direct {p0, v0}, Lorg/nyanya/android/traditionalt9/AbsSymDialog;->sendChar(I)V

    goto :goto_0

    .line 88
    :pswitch_8
    iget v0, p0, Lorg/nyanya/android/traditionalt9/AbsSymDialog;->pageoffset:I

    add-int/lit8 v0, v0, 0x8

    invoke-direct {p0, v0}, Lorg/nyanya/android/traditionalt9/AbsSymDialog;->sendChar(I)V

    goto :goto_0

    .line 91
    :pswitch_9
    iget v0, p0, Lorg/nyanya/android/traditionalt9/AbsSymDialog;->pageoffset:I

    add-int/lit8 v0, v0, 0x9

    invoke-direct {p0, v0}, Lorg/nyanya/android/traditionalt9/AbsSymDialog;->sendChar(I)V

    goto :goto_0

    .line 95
    :pswitch_a
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/nyanya/android/traditionalt9/AbsSymDialog;->pageChange(I)V

    goto :goto_0

    .line 98
    :pswitch_b
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lorg/nyanya/android/traditionalt9/AbsSymDialog;->pageChange(I)V

    goto :goto_0

    .line 62
    :pswitch_data_0
    .packed-switch 0x7f0b000c
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_b
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 164
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-eqz v1, :cond_0

    .line 197
    :goto_0
    return v0

    .line 167
    :cond_0
    iget-boolean v1, p0, Lorg/nyanya/android/traditionalt9/AbsSymDialog;->started:Z

    if-eqz v1, :cond_1

    .line 168
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/nyanya/android/traditionalt9/AbsSymDialog;->started:Z

    .line 171
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 180
    :goto_1
    packed-switch p1, :pswitch_data_1

    .line 197
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 173
    :pswitch_0
    const/16 p1, 0x12

    .line 174
    goto :goto_1

    .line 176
    :pswitch_1
    const/16 p1, 0x11

    goto :goto_1

    .line 194
    :pswitch_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    goto :goto_0

    .line 171
    :pswitch_data_0
    .packed-switch 0x4a
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 180
    :pswitch_data_1
    .packed-switch 0x7
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 203
    iget-boolean v1, p0, Lorg/nyanya/android/traditionalt9/AbsSymDialog;->started:Z

    if-eqz v1, :cond_0

    .line 204
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/nyanya/android/traditionalt9/AbsSymDialog;->started:Z

    .line 237
    :goto_0
    return v0

    .line 208
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 216
    :goto_1
    packed-switch p1, :pswitch_data_1

    .line 237
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 210
    :pswitch_0
    const/16 p1, 0x12

    .line 211
    goto :goto_1

    .line 213
    :pswitch_1
    const/16 p1, 0x11

    goto :goto_1

    .line 230
    :pswitch_2
    invoke-direct {p0, p1}, Lorg/nyanya/android/traditionalt9/AbsSymDialog;->onKey(I)V

    goto :goto_0

    .line 208
    :pswitch_data_0
    .packed-switch 0x4a
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 216
    :pswitch_data_1
    .packed-switch 0x7
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
