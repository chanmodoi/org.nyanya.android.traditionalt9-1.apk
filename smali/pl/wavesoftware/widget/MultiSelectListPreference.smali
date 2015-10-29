.class public Lpl/wavesoftware/widget/MultiSelectListPreference;
.super Landroid/preference/ListPreference;
.source "MultiSelectListPreference.java"


# static fields
.field private static final DEFAULT_SEPARATOR:Ljava/lang/String; = "\u0001\u0007\u001d\u0007\u0001"


# instance fields
.field private entryChecked:[Z

.field private separator:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lpl/wavesoftware/widget/MultiSelectListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    invoke-virtual {p0}, Lpl/wavesoftware/widget/MultiSelectListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Z

    iput-object v0, p0, Lpl/wavesoftware/widget/MultiSelectListPreference;->entryChecked:[Z

    .line 27
    const-string v0, "\u0001\u0007\u001d\u0007\u0001"

    iput-object v0, p0, Lpl/wavesoftware/widget/MultiSelectListPreference;->separator:Ljava/lang/String;

    .line 28
    return-void
.end method

.method static synthetic access$000(Lpl/wavesoftware/widget/MultiSelectListPreference;)[Z
    .locals 1
    .param p0, "x0"    # Lpl/wavesoftware/widget/MultiSelectListPreference;

    .prologue
    .line 18
    iget-object v0, p0, Lpl/wavesoftware/widget/MultiSelectListPreference;->entryChecked:[Z

    return-object v0
.end method

.method public static defaultunpack2Int(Ljava/lang/CharSequence;)[I
    .locals 7
    .param p0, "val"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 64
    if-eqz p0, :cond_0

    const-string v3, ""

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 66
    :cond_0
    new-array v0, v6, [I

    aput v5, v0, v5

    .line 77
    .end local p0    # "val":Ljava/lang/CharSequence;
    .local v0, "ia":[I
    .local v1, "sa":[Ljava/lang/String;
    .local v2, "x":I
    :cond_1
    :goto_0
    return-object v0

    .line 68
    .end local v0    # "ia":[I
    .end local v1    # "sa":[Ljava/lang/String;
    .end local v2    # "x":I
    .restart local p0    # "val":Ljava/lang/CharSequence;
    :cond_2
    check-cast p0, Ljava/lang/String;

    .end local p0    # "val":Ljava/lang/CharSequence;
    const-string v3, "\u0001\u0007\u001d\u0007\u0001"

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 69
    .restart local v1    # "sa":[Ljava/lang/String;
    array-length v3, v1

    if-ge v3, v6, :cond_3

    .line 70
    const-string v3, "MultiSelectPref.defaultunpack"

    const-string v4, "split is less than 1"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    new-array v0, v6, [I

    aput v5, v0, v5

    goto :goto_0

    .line 73
    :cond_3
    array-length v3, v1

    new-array v0, v3, [I

    .line 74
    .restart local v0    # "ia":[I
    const/4 v2, 0x0

    .restart local v2    # "x":I
    :goto_1
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 75
    aget-object v3, v1, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v0, v2

    .line 74
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method protected static join(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "separator"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 190
    .local p0, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "oIter":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 191
    .end local v1    # "oIter":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_0
    const-string v2, ""

    .line 195
    :goto_0
    return-object v2

    .line 192
    .restart local v1    # "oIter":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 193
    .local v0, "oBuilder":Ljava/lang/StringBuilder;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 194
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 195
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private prepareSummary(Ljava/util/List;)Ljava/lang/CharSequence;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)",
            "Ljava/lang/CharSequence;"
        }
    .end annotation

    .prologue
    .line 136
    .local p1, "joined":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 137
    .local v6, "titles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lpl/wavesoftware/widget/MultiSelectListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 138
    .local v1, "entryTitle":[Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lpl/wavesoftware/widget/MultiSelectListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 139
    .local v2, "entryValues":[Ljava/lang/CharSequence;
    const/4 v4, 0x0

    .line 140
    .local v4, "ix":I
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/CharSequence;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v7, v0, v3

    .line 141
    .local v7, "value":Ljava/lang/CharSequence;
    invoke-interface {p1, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 142
    aget-object v8, v1, v4

    check-cast v8, Ljava/lang/String;

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 140
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 146
    .end local v7    # "value":Ljava/lang/CharSequence;
    :cond_1
    const-string v8, ", "

    invoke-static {v6, v8}, Lpl/wavesoftware/widget/MultiSelectListPreference;->join(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method

.method private restoreCheckedEntries()V
    .locals 7

    .prologue
    .line 91
    invoke-virtual {p0}, Lpl/wavesoftware/widget/MultiSelectListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 94
    .local v1, "entryValues":[Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lpl/wavesoftware/widget/MultiSelectListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lpl/wavesoftware/widget/MultiSelectListPreference;->unpack(Ljava/lang/CharSequence;)[Ljava/lang/CharSequence;

    move-result-object v3

    .line 96
    .local v3, "vals":[Ljava/lang/CharSequence;
    if-eqz v3, :cond_0

    .line 97
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 98
    .local v4, "valuesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, v1

    if-ge v2, v5, :cond_0

    .line 99
    aget-object v0, v1, v2

    .line 100
    .local v0, "entry":Ljava/lang/CharSequence;
    iget-object v5, p0, Lpl/wavesoftware/widget/MultiSelectListPreference;->entryChecked:[Z

    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    aput-boolean v6, v5, v2

    .line 98
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 103
    .end local v0    # "entry":Ljava/lang/CharSequence;
    .end local v2    # "i":I
    .end local v4    # "valuesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    :cond_0
    return-void
.end method

.method private setValueAndEvent(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lpl/wavesoftware/widget/MultiSelectListPreference;->unpack(Ljava/lang/CharSequence;)[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lpl/wavesoftware/widget/MultiSelectListPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_2

    .line 128
    :cond_0
    const-string v0, "0"

    invoke-virtual {p0, v0}, Lpl/wavesoftware/widget/MultiSelectListPreference;->setValue(Ljava/lang/String;)V

    .line 133
    :cond_1
    :goto_0
    return-void

    .line 130
    :cond_2
    invoke-virtual {p0, p1}, Lpl/wavesoftware/widget/MultiSelectListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private unpack(Ljava/lang/CharSequence;)[Ljava/lang/CharSequence;
    .locals 1
    .param p1, "val"    # Ljava/lang/CharSequence;

    .prologue
    .line 55
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/CharSequence;

    .line 58
    .end local p1    # "val":Ljava/lang/CharSequence;
    :goto_0
    return-object v0

    .restart local p1    # "val":Ljava/lang/CharSequence;
    :cond_1
    check-cast p1, Ljava/lang/String;

    .end local p1    # "val":Ljava/lang/CharSequence;
    iget-object v0, p0, Lpl/wavesoftware/widget/MultiSelectListPreference;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getCheckedValues()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 87
    invoke-virtual {p0}, Lpl/wavesoftware/widget/MultiSelectListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lpl/wavesoftware/widget/MultiSelectListPreference;->unpack(Ljava/lang/CharSequence;)[Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method protected onDialogClosed(Z)V
    .locals 7
    .param p1, "positiveResult"    # Z

    .prologue
    .line 107
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 109
    .local v4, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-virtual {p0}, Lpl/wavesoftware/widget/MultiSelectListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 110
    .local v0, "entryValues":[Ljava/lang/CharSequence;
    if-eqz p1, :cond_2

    if-eqz v0, :cond_2

    .line 111
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v0

    if-ge v1, v5, :cond_1

    .line 112
    iget-object v5, p0, Lpl/wavesoftware/widget/MultiSelectListPreference;->entryChecked:[Z

    aget-boolean v5, v5, v1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 113
    aget-object v2, v0, v1

    check-cast v2, Ljava/lang/String;

    .line 114
    .local v2, "val":Ljava/lang/String;
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    .end local v2    # "val":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 118
    :cond_1
    iget-object v5, p0, Lpl/wavesoftware/widget/MultiSelectListPreference;->separator:Ljava/lang/String;

    invoke-static {v4, v5}, Lpl/wavesoftware/widget/MultiSelectListPreference;->join(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 119
    .local v3, "value":Ljava/lang/String;
    invoke-direct {p0, v4}, Lpl/wavesoftware/widget/MultiSelectListPreference;->prepareSummary(Ljava/util/List;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {p0, v5}, Lpl/wavesoftware/widget/MultiSelectListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 120
    invoke-direct {p0, v3}, Lpl/wavesoftware/widget/MultiSelectListPreference;->setValueAndEvent(Ljava/lang/String;)V

    .line 122
    .end local v1    # "i":I
    .end local v3    # "value":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .param p1, "typedArray"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .prologue
    .line 151
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 5
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;

    .prologue
    .line 36
    invoke-virtual {p0}, Lpl/wavesoftware/widget/MultiSelectListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 37
    .local v0, "entries":[Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lpl/wavesoftware/widget/MultiSelectListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 38
    .local v1, "entryValues":[Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    array-length v3, v0

    array-length v4, v1

    if-eq v3, v4, :cond_1

    .line 40
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "MultiSelectListPreference requires an entries array and an entryValues array which are both the same length"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 45
    :cond_1
    invoke-direct {p0}, Lpl/wavesoftware/widget/MultiSelectListPreference;->restoreCheckedEntries()V

    .line 46
    new-instance v2, Lpl/wavesoftware/widget/MultiSelectListPreference$1;

    invoke-direct {v2, p0}, Lpl/wavesoftware/widget/MultiSelectListPreference$1;-><init>(Lpl/wavesoftware/widget/MultiSelectListPreference;)V

    .line 51
    .local v2, "listener":Landroid/content/DialogInterface$OnMultiChoiceClickListener;
    iget-object v3, p0, Lpl/wavesoftware/widget/MultiSelectListPreference;->entryChecked:[Z

    invoke-virtual {p1, v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    .line 52
    return-void
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 5
    .param p1, "restoreValue"    # Z
    .param p2, "rawDefaultValue"    # Ljava/lang/Object;

    .prologue
    .line 157
    const/4 v3, 0x0

    .line 159
    .local v3, "value":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 160
    const/4 v4, 0x0

    new-array v0, v4, [Ljava/lang/CharSequence;

    .line 164
    .end local p2    # "rawDefaultValue":Ljava/lang/Object;
    .local v0, "defaultValue":[Ljava/lang/CharSequence;
    :goto_0
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 165
    .local v1, "joined":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    iget-object v4, p0, Lpl/wavesoftware/widget/MultiSelectListPreference;->separator:Ljava/lang/String;

    invoke-static {v1, v4}, Lpl/wavesoftware/widget/MultiSelectListPreference;->join(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 166
    .local v2, "joinedDefaultValue":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 167
    invoke-virtual {p0, v2}, Lpl/wavesoftware/widget/MultiSelectListPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 172
    :goto_1
    invoke-direct {p0, v3}, Lpl/wavesoftware/widget/MultiSelectListPreference;->unpack(Ljava/lang/CharSequence;)[Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {p0, v4}, Lpl/wavesoftware/widget/MultiSelectListPreference;->prepareSummary(Ljava/util/List;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0, v4}, Lpl/wavesoftware/widget/MultiSelectListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 173
    invoke-direct {p0, v3}, Lpl/wavesoftware/widget/MultiSelectListPreference;->setValueAndEvent(Ljava/lang/String;)V

    .line 174
    return-void

    .line 162
    .end local v0    # "defaultValue":[Ljava/lang/CharSequence;
    .end local v1    # "joined":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    .end local v2    # "joinedDefaultValue":Ljava/lang/String;
    .restart local p2    # "rawDefaultValue":Ljava/lang/Object;
    :cond_0
    check-cast p2, [Ljava/lang/CharSequence;

    .end local p2    # "rawDefaultValue":Ljava/lang/Object;
    move-object v0, p2

    check-cast v0, [Ljava/lang/CharSequence;

    .restart local v0    # "defaultValue":[Ljava/lang/CharSequence;
    goto :goto_0

    .line 169
    .restart local v1    # "joined":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    .restart local v2    # "joinedDefaultValue":Ljava/lang/String;
    :cond_1
    move-object v3, v2

    goto :goto_1
.end method
