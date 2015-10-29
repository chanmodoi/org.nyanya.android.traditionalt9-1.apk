.class public Lorg/nyanya/android/traditionalt9/InterfaceHandler;
.super Ljava/lang/Object;
.source "InterfaceHandler.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# static fields
.field private static final buttons:[I


# instance fields
.field private mainview:Landroid/view/View;

.field private parent:Lorg/nyanya/android/traditionalt9/TraditionalT9;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/nyanya/android/traditionalt9/InterfaceHandler;->buttons:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0b0006
        0x7f0b000a
        0x7f0b0009
    .end array-data
.end method

.method public constructor <init>(Landroid/view/View;Lorg/nyanya/android/traditionalt9/TraditionalT9;)V
    .locals 0
    .param p1, "mainview"    # Landroid/view/View;
    .param p2, "iparent"    # Lorg/nyanya/android/traditionalt9/TraditionalT9;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p2, p0, Lorg/nyanya/android/traditionalt9/InterfaceHandler;->parent:Lorg/nyanya/android/traditionalt9/TraditionalT9;

    .line 20
    invoke-virtual {p0, p1}, Lorg/nyanya/android/traditionalt9/InterfaceHandler;->changeView(Landroid/view/View;)V

    .line 21
    return-void
.end method


# virtual methods
.method protected changeView(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 29
    iput-object p1, p0, Lorg/nyanya/android/traditionalt9/InterfaceHandler;->mainview:Landroid/view/View;

    .line 31
    sget-object v0, Lorg/nyanya/android/traditionalt9/InterfaceHandler;->buttons:[I

    .local v0, "arr$":[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget v1, v0, v3

    .line 32
    .local v1, "buttid":I
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 33
    .local v2, "button":Landroid/view/View;
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    iget-object v5, p0, Lorg/nyanya/android/traditionalt9/InterfaceHandler;->parent:Lorg/nyanya/android/traditionalt9/TraditionalT9;

    iget-boolean v5, v5, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mAddingWord:Z

    if-nez v5, :cond_0

    .line 35
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 31
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 38
    .end local v1    # "buttid":I
    .end local v2    # "button":Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected emulateMiddleButton()V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lorg/nyanya/android/traditionalt9/InterfaceHandler;->mainview:Landroid/view/View;

    const v1, 0x7f0b0009

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->performClick()Z

    .line 74
    return-void
.end method

.method protected getMainview()Landroid/view/View;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lorg/nyanya/android/traditionalt9/InterfaceHandler;->mainview:Landroid/view/View;

    return-object v0
.end method

.method protected hideView()V
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lorg/nyanya/android/traditionalt9/InterfaceHandler;->mainview:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 133
    return-void
.end method

.method protected midButtonUpdate(Z)V
    .locals 2
    .param p1, "composing"    # Z

    .prologue
    const v1, 0x7f0b0009

    .line 77
    if-eqz p1, :cond_0

    .line 78
    iget-object v0, p0, Lorg/nyanya/android/traditionalt9/InterfaceHandler;->mainview:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f080013

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 82
    :goto_0
    return-void

    .line 80
    :cond_0
    iget-object v0, p0, Lorg/nyanya/android/traditionalt9/InterfaceHandler;->mainview:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f080012

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 86
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 105
    :goto_0
    :pswitch_0
    return-void

    .line 88
    :pswitch_1
    iget-object v0, p0, Lorg/nyanya/android/traditionalt9/InterfaceHandler;->parent:Lorg/nyanya/android/traditionalt9/TraditionalT9;

    iget-boolean v0, v0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mAddingWord:Z

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lorg/nyanya/android/traditionalt9/InterfaceHandler;->parent:Lorg/nyanya/android/traditionalt9/TraditionalT9;

    invoke-virtual {v0}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->showSymbolPage()V

    goto :goto_0

    .line 91
    :cond_0
    iget-object v0, p0, Lorg/nyanya/android/traditionalt9/InterfaceHandler;->parent:Lorg/nyanya/android/traditionalt9/TraditionalT9;

    iget-boolean v0, v0, Lorg/nyanya/android/traditionalt9/TraditionalT9;->mWordFound:Z

    if-eqz v0, :cond_1

    .line 92
    iget-object v0, p0, Lorg/nyanya/android/traditionalt9/InterfaceHandler;->parent:Lorg/nyanya/android/traditionalt9/TraditionalT9;

    invoke-virtual {v0}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->showSymbolPage()V

    goto :goto_0

    .line 94
    :cond_1
    iget-object v0, p0, Lorg/nyanya/android/traditionalt9/InterfaceHandler;->parent:Lorg/nyanya/android/traditionalt9/TraditionalT9;

    invoke-virtual {v0}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->showAddWord()V

    goto :goto_0

    .line 99
    :pswitch_2
    iget-object v0, p0, Lorg/nyanya/android/traditionalt9/InterfaceHandler;->parent:Lorg/nyanya/android/traditionalt9/TraditionalT9;

    invoke-virtual {v0}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->handleMidButton()V

    goto :goto_0

    .line 102
    :pswitch_3
    iget-object v0, p0, Lorg/nyanya/android/traditionalt9/InterfaceHandler;->parent:Lorg/nyanya/android/traditionalt9/TraditionalT9;

    invoke-virtual {v0}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->nextKeyMode()V

    goto :goto_0

    .line 86
    :pswitch_data_0
    .packed-switch 0x7f0b0006
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 118
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 126
    const/4 v0, 0x0

    .line 128
    :goto_0
    return v0

    .line 120
    :sswitch_0
    iget-object v0, p0, Lorg/nyanya/android/traditionalt9/InterfaceHandler;->parent:Lorg/nyanya/android/traditionalt9/TraditionalT9;

    invoke-virtual {v0}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->showAddWord()V

    .line 128
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 123
    :sswitch_1
    iget-object v0, p0, Lorg/nyanya/android/traditionalt9/InterfaceHandler;->parent:Lorg/nyanya/android/traditionalt9/TraditionalT9;

    invoke-virtual {v0}, Lorg/nyanya/android/traditionalt9/TraditionalT9;->launchOptions()V

    goto :goto_1

    .line 118
    :sswitch_data_0
    .sparse-switch
        0x7f0b0006 -> :sswitch_0
        0x7f0b000a -> :sswitch_1
    .end sparse-switch
.end method

.method protected setPressed(IZ)V
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "pressed"    # Z

    .prologue
    .line 41
    const/4 v0, 0x0

    .line 42
    .local v0, "id":I
    sparse-switch p1, :sswitch_data_0

    .line 53
    :goto_0
    if-eqz v0, :cond_0

    .line 54
    iget-object v1, p0, Lorg/nyanya/android/traditionalt9/InterfaceHandler;->mainview:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/view/View;->setPressed(Z)V

    .line 56
    :cond_0
    return-void

    .line 44
    :sswitch_0
    const v0, 0x7f0b0006

    .line 45
    goto :goto_0

    .line 47
    :sswitch_1
    const v0, 0x7f0b000a

    .line 48
    goto :goto_0

    .line 50
    :sswitch_2
    const v0, 0x7f0b0009

    goto :goto_0

    .line 42
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x17 -> :sswitch_2
    .end sparse-switch
.end method

.method protected showHold(Z)V
    .locals 3
    .param p1, "show"    # Z

    .prologue
    .line 108
    iget-object v1, p0, Lorg/nyanya/android/traditionalt9/InterfaceHandler;->mainview:Landroid/view/View;

    const v2, 0x7f0b0006

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewSwitcher;

    .line 109
    .local v0, "vs":Landroid/widget/ViewSwitcher;
    if-eqz p1, :cond_0

    .line 110
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setDisplayedChild(I)V

    .line 114
    :goto_0
    return-void

    .line 112
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setDisplayedChild(I)V

    goto :goto_0
.end method

.method protected showNotFound(Z)V
    .locals 4
    .param p1, "notfound"    # Z

    .prologue
    const v3, 0x7f0b0004

    const v1, 0x7f0b0003

    const v2, 0x7f080010

    .line 59
    if-eqz p1, :cond_0

    .line 60
    iget-object v0, p0, Lorg/nyanya/android/traditionalt9/InterfaceHandler;->mainview:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f080011

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 62
    iget-object v0, p0, Lorg/nyanya/android/traditionalt9/InterfaceHandler;->mainview:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 70
    :goto_0
    return-void

    .line 65
    :cond_0
    iget-object v0, p0, Lorg/nyanya/android/traditionalt9/InterfaceHandler;->mainview:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 67
    iget-object v0, p0, Lorg/nyanya/android/traditionalt9/InterfaceHandler;->mainview:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f08000f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method protected showView()V
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lorg/nyanya/android/traditionalt9/InterfaceHandler;->mainview:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 137
    return-void
.end method
