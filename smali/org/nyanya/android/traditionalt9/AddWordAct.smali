.class public Lorg/nyanya/android/traditionalt9/AddWordAct;
.super Landroid/app/Activity;
.source "AddWordAct.java"


# instance fields
.field lang:I

.field main:Landroid/view/View;

.field origword:Ljava/lang/String;

.field pref:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public addWordButton(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 43
    iget-object v1, p0, Lorg/nyanya/android/traditionalt9/AddWordAct;->main:Landroid/view/View;

    const/high16 v2, 0x7f0b0000

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 45
    .local v0, "et":Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/nyanya/android/traditionalt9/AddWordAct;->doAddWord(Ljava/lang/String;)V

    .line 46
    invoke-virtual {p0}, Lorg/nyanya/android/traditionalt9/AddWordAct;->finish()V

    .line 47
    return-void
.end method

.method public cancelButton(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 75
    invoke-virtual {p0}, Lorg/nyanya/android/traditionalt9/AddWordAct;->finish()V

    .line 76
    return-void
.end method

.method public doAddWord(Ljava/lang/String;)V
    .locals 9
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-static {p0}, Lorg/nyanya/android/traditionalt9/T9DB;->getInstance(Landroid/content/Context;)Lorg/nyanya/android/traditionalt9/T9DB;

    move-result-object v1

    .line 52
    .local v1, "db":Lorg/nyanya/android/traditionalt9/T9DB;
    :try_start_0
    iget v6, p0, Lorg/nyanya/android/traditionalt9/AddWordAct;->lang:I

    invoke-virtual {v1, p1, v6}, Lorg/nyanya/android/traditionalt9/T9DB;->addWord(Ljava/lang/String;I)V
    :try_end_0
    .catch Lorg/nyanya/android/traditionalt9/DBException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :goto_0
    iget-object v6, p0, Lorg/nyanya/android/traditionalt9/AddWordAct;->pref:Landroid/content/SharedPreferences;

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 68
    .local v5, "prefedit":Landroid/content/SharedPreferences$Editor;
    const-string v6, "last_word"

    invoke-interface {v5, v6, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 69
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 70
    return-void

    .line 53
    .end local v5    # "prefedit":Landroid/content/SharedPreferences$Editor;
    :catch_0
    move-exception v3

    .line 54
    .local v3, "e":Lorg/nyanya/android/traditionalt9/DBException;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 55
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v3}, Lorg/nyanya/android/traditionalt9/DBException;->getMessage()Ljava/lang/String;

    move-result-object v4

    .line 57
    .local v4, "msg":Ljava/lang/String;
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f080001

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f080016

    new-instance v8, Lorg/nyanya/android/traditionalt9/AddWordAct$1;

    invoke-direct {v8, p0}, Lorg/nyanya/android/traditionalt9/AddWordAct$1;-><init>(Lorg/nyanya/android/traditionalt9/AddWordAct;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 64
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 65
    .local v2, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedData"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, -0x1

    .line 24
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    invoke-virtual {p0}, Lorg/nyanya/android/traditionalt9/AddWordAct;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const/high16 v4, 0x7f030000

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 26
    .local v2, "v":Landroid/view/View;
    const/high16 v3, 0x7f0b0000

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 27
    .local v0, "et":Landroid/widget/EditText;
    invoke-virtual {p0}, Lorg/nyanya/android/traditionalt9/AddWordAct;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 28
    .local v1, "i":Landroid/content/Intent;
    const-string v3, "org.nyanya.android.traditionalt9.word"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/nyanya/android/traditionalt9/AddWordAct;->origword:Ljava/lang/String;

    .line 30
    const-string v3, "org.nyanya.android.traditionalt9.lang"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lorg/nyanya/android/traditionalt9/AddWordAct;->lang:I

    .line 31
    iget v3, p0, Lorg/nyanya/android/traditionalt9/AddWordAct;->lang:I

    if-ne v3, v6, :cond_0

    .line 32
    const-string v3, "AddWordAct.onCreate"

    const-string v4, "lang is invalid. How?"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    :cond_0
    iget-object v3, p0, Lorg/nyanya/android/traditionalt9/AddWordAct;->origword:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 36
    iget-object v3, p0, Lorg/nyanya/android/traditionalt9/AddWordAct;->origword:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 37
    invoke-virtual {p0, v2}, Lorg/nyanya/android/traditionalt9/AddWordAct;->setContentView(Landroid/view/View;)V

    .line 38
    iput-object v2, p0, Lorg/nyanya/android/traditionalt9/AddWordAct;->main:Landroid/view/View;

    .line 39
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lorg/nyanya/android/traditionalt9/AddWordAct;->pref:Landroid/content/SharedPreferences;

    .line 40
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 81
    invoke-virtual {p0}, Lorg/nyanya/android/traditionalt9/AddWordAct;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f0a0000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 82
    const/4 v0, 0x1

    return v0
.end method
