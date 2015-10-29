.class Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$LoadDictTask;
.super Landroid/os/AsyncTask;
.source "TraditionalT9Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadDictTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$Reply;",
        ">;"
    }
.end annotation


# instance fields
.field dicts:[Ljava/lang/String;

.field internal:Z

.field mSupportedLanguages:[I

.field pd:Landroid/app/ProgressDialog;

.field pos:J

.field restore:Z

.field size:J

.field final synthetic this$0:Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;


# direct methods
.method constructor <init>(Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;IZZ[I)V
    .locals 9
    .param p2, "msgid"    # I
    .param p3, "intern"    # Z
    .param p4, "restorebackup"    # Z
    .param p5, "supportedLanguages"    # [I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 145
    iput-object p1, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$LoadDictTask;->this$0:Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 146
    iput-boolean p3, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$LoadDictTask;->internal:Z

    .line 147
    iput-boolean p4, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$LoadDictTask;->restore:Z

    .line 149
    array-length v0, p5

    .line 150
    .local v0, "suplanglen":I
    new-array v2, v0, [Ljava/lang/String;

    iput-object v2, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$LoadDictTask;->dicts:[Ljava/lang/String;

    .line 151
    const/4 v1, 0x0

    .local v1, "x":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 152
    if-eqz p3, :cond_0

    .line 153
    iget-object v2, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$LoadDictTask;->dicts:[Ljava/lang/String;

    const-string v3, "%s-utf8.txt"

    new-array v4, v8, [Ljava/lang/Object;

    sget-object v5, Lorg/nyanya/android/traditionalt9/LangHelper;->LANGS:[Ljava/lang/String;

    aget v6, p5, v1

    aget-object v5, v5, v6

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 151
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 156
    :cond_0
    iget-object v2, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$LoadDictTask;->dicts:[Ljava/lang/String;

    const-string v3, "user.%s.dict"

    new-array v4, v8, [Ljava/lang/Object;

    sget-object v5, Lorg/nyanya/android/traditionalt9/LangHelper;->LANGS:[Ljava/lang/String;

    aget v6, p5, v1

    aget-object v5, v5, v6

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    goto :goto_1

    .line 160
    :cond_1
    iput-object p5, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$LoadDictTask;->mSupportedLanguages:[I

    .line 162
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-direct {v2, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$LoadDictTask;->pd:Landroid/app/ProgressDialog;

    .line 163
    iget-object v2, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$LoadDictTask;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 164
    iget-object v2, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$LoadDictTask;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v2, p1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 165
    return-void
.end method

.method private getDictSizes(ZZ[Ljava/lang/String;)J
    .locals 14
    .param p1, "internal"    # Z
    .param p2, "restore"    # Z
    .param p3, "dicts"    # [Ljava/lang/String;

    .prologue
    .line 168
    if-eqz p1, :cond_1

    .line 170
    new-instance v9, Ljava/util/Properties;

    invoke-direct {v9}, Ljava/util/Properties;-><init>()V

    .line 172
    .local v9, "props":Ljava/util/Properties;
    :try_start_0
    iget-object v12, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$LoadDictTask;->this$0:Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;

    invoke-virtual {v12}, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v12

    const-string v13, "dict.properties"

    invoke-virtual {v12, v13}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v7

    .line 173
    .local v7, "input":Ljava/io/InputStream;
    invoke-virtual {v9, v7}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 174
    const-wide/16 v10, 0x0

    .line 175
    .local v10, "total":J
    move-object/from16 v0, p3

    .local v0, "arr$":[Ljava/lang/String;
    array-length v8, v0

    .local v8, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_0
    if-ge v6, v8, :cond_0

    aget-object v3, v0, v6

    .line 176
    .local v3, "dict":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "size."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v12

    add-long/2addr v10, v12

    .line 175
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 180
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v3    # "dict":Ljava/lang/String;
    .end local v6    # "i$":I
    .end local v7    # "input":Ljava/io/InputStream;
    .end local v8    # "len$":I
    .end local v10    # "total":J
    :catch_0
    move-exception v4

    .line 181
    .local v4, "e":Ljava/io/IOException;
    const-string v12, "getDictSizes"

    const-string v13, "Unable to get dict sizes"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 183
    const-wide/16 v10, -0x1

    .line 209
    .end local v4    # "e":Ljava/io/IOException;
    .end local v9    # "props":Ljava/util/Properties;
    :cond_0
    :goto_1
    return-wide v10

    .line 184
    .restart local v9    # "props":Ljava/util/Properties;
    :catch_1
    move-exception v4

    .line 185
    .local v4, "e":Ljava/lang/NumberFormatException;
    const-string v12, "getDictSizes"

    const-string v13, "Unable to parse sizes"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    const-wide/16 v10, -0x1

    goto :goto_1

    .line 189
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    .end local v9    # "props":Ljava/util/Properties;
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v12

    const-string v13, "traditionalt9"

    invoke-direct {v1, v12, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 190
    .local v1, "backupfile":Ljava/io/File;
    if-eqz p2, :cond_3

    .line 192
    new-instance v2, Ljava/io/File;

    const-string v12, "t9backup.txt"

    invoke-direct {v2, v1, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 193
    .end local v1    # "backupfile":Ljava/io/File;
    .local v2, "backupfile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 194
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v10

    goto :goto_1

    .line 196
    :cond_2
    const-wide/16 v10, -0x1

    goto :goto_1

    .line 199
    .end local v2    # "backupfile":Ljava/io/File;
    .restart local v1    # "backupfile":Ljava/io/File;
    :cond_3
    const-wide/16 v10, 0x0

    .line 201
    .restart local v10    # "total":J
    move-object/from16 v0, p3

    .restart local v0    # "arr$":[Ljava/lang/String;
    array-length v8, v0

    .restart local v8    # "len$":I
    const/4 v6, 0x0

    .restart local v6    # "i$":I
    :goto_2
    if-ge v6, v8, :cond_0

    aget-object v3, v0, v6

    .line 202
    .restart local v3    # "dict":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 203
    .local v5, "f":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 204
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v12

    add-long/2addr v10, v12

    .line 201
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 206
    :cond_4
    const-wide/16 v12, 0x0

    add-long/2addr v10, v12

    goto :goto_3
.end method

.method private getLine(Ljava/io/BufferedReader;Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$Reply;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "br"    # Ljava/io/BufferedReader;
    .param p2, "rpl"    # Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$Reply;
    .param p3, "fname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$LoadException;
        }
    .end annotation

    .prologue
    .line 342
    :try_start_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 348
    :goto_0
    return-object v1

    .line 343
    :catch_0
    move-exception v0

    .line 344
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 345
    const/4 v1, 0x0

    iput-boolean v1, p2, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$Reply;->status:Z

    .line 346
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IO Error ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$Reply;->addMsg(Ljava/lang/String;)V

    .line 348
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private processChars(Landroid/database/sqlite/SQLiteDatabase;I)V
    .locals 8
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "lang"    # I

    .prologue
    .line 323
    new-instance v6, Landroid/database/DatabaseUtils$InsertHelper;

    const-string v7, "word"

    invoke-direct {v6, p1, v7}, Landroid/database/DatabaseUtils$InsertHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 325
    .local v6, "wordhelp":Landroid/database/DatabaseUtils$InsertHelper;
    const-string v7, "word"

    invoke-virtual {v6, v7}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 326
    .local v5, "wordColumn":I
    const-string v7, "lang"

    invoke-virtual {v6, v7}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 327
    .local v3, "langColumn":I
    const-string v7, "freq"

    invoke-virtual {v6, v7}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 328
    .local v1, "freqColumn":I
    const-string v7, "seq"

    invoke-virtual {v6, v7}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 330
    .local v4, "seqColumn":I
    sget-object v7, Lorg/nyanya/android/traditionalt9/CharMap;->CHARTABLE:Ljava/util/AbstractList;

    invoke-virtual {v7, p2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 331
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Character;Ljava/lang/Integer;>;"
    invoke-virtual {v6}, Landroid/database/DatabaseUtils$InsertHelper;->prepareForReplace()V

    .line 332
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v3, v7}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    .line 333
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v4, v7}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    .line 334
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Character;

    invoke-virtual {v7}, Ljava/lang/Character;->charValue()C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    .line 335
    const/4 v7, 0x0

    invoke-virtual {v6, v1, v7}, Landroid/database/DatabaseUtils$InsertHelper;->bind(II)V

    .line 336
    invoke-virtual {v6}, Landroid/database/DatabaseUtils$InsertHelper;->execute()J

    goto :goto_0

    .line 338
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Character;Ljava/lang/Integer;>;"
    :cond_0
    return-void
.end method

.method private processFile(Ljava/io/InputStream;Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$Reply;Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$Reply;
    .locals 25
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "rpl"    # Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$Reply;
    .param p3, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p4, "lang"    # I
    .param p5, "fname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$LoadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 353
    const-wide/16 v8, 0x0

    .line 354
    .local v8, "last":J
    new-instance v13, Lcom/stackoverflow/answer/UnicodeBOMInputStream;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lcom/stackoverflow/answer/UnicodeBOMInputStream;-><init>(Ljava/io/InputStream;)V

    .line 356
    .local v13, "ubis":Lcom/stackoverflow/answer/UnicodeBOMInputStream;
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v19, Ljava/io/InputStreamReader;

    move-object/from16 v0, v19

    invoke-direct {v0, v13}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v19

    invoke-direct {v3, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 357
    .local v3, "br":Ljava/io/BufferedReader;
    invoke-virtual {v13}, Lcom/stackoverflow/answer/UnicodeBOMInputStream;->skipBOM()Lcom/stackoverflow/answer/UnicodeBOMInputStream;

    .line 359
    new-instance v16, Landroid/database/DatabaseUtils$InsertHelper;

    const-string v19, "word"

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/database/DatabaseUtils$InsertHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 360
    .local v16, "wordhelp":Landroid/database/DatabaseUtils$InsertHelper;
    const-string v19, "lang"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 361
    .local v7, "langColumn":I
    const-string v19, "word"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 362
    .local v15, "wordColumn":I
    const-string v19, "freq"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 363
    .local v6, "freqColumn":I
    const-string v19, "seq"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 368
    .local v12, "seqColumn":I
    const/4 v10, 0x1

    .line 370
    .local v10, "linecount":I
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p5

    invoke-direct {v0, v3, v1, v2}, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$LoadDictTask;->getLine(Ljava/io/BufferedReader;Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$Reply;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 372
    .local v14, "word":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 375
    :goto_0
    if-eqz v14, :cond_0

    .line 376
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$LoadDictTask;->isCancelled()Z

    move-result v19

    if-eqz v19, :cond_1

    .line 377
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p2

    iput-boolean v0, v1, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$Reply;->status:Z

    .line 378
    const-string v19, "User cancelled."

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$Reply;->addMsg(Ljava/lang/String;)V

    .line 449
    :cond_0
    :goto_1
    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x2710

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$LoadDictTask;->publishProgress([Ljava/lang/Object;)V

    .line 450
    invoke-virtual/range {p3 .. p3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 452
    const/16 v19, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->setLockingEnabled(Z)V

    .line 453
    invoke-virtual/range {p3 .. p3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 454
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 455
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->close()V

    .line 456
    invoke-virtual {v13}, Lcom/stackoverflow/answer/UnicodeBOMInputStream;->close()V

    .line 457
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->close()V

    .line 458
    invoke-virtual/range {v16 .. v16}, Landroid/database/DatabaseUtils$InsertHelper;->close()V

    .line 460
    return-object p2

    .line 381
    :cond_1
    :try_start_1
    const-string v19, " "

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 382
    const-string v19, " "

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 383
    .local v18, "ws":[Ljava/lang/String;
    const/16 v19, 0x0

    aget-object v14, v18, v19
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 385
    const/16 v19, 0x1

    :try_start_2
    aget-object v19, v18, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v5

    .line 391
    .local v5, "freq":I
    :goto_2
    const/16 v19, -0x1

    move/from16 v0, p4

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    :try_start_3
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v19, v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    .line 393
    const/16 v19, 0x2

    :try_start_4
    aget-object v19, v18, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result p4

    .line 399
    :goto_3
    :try_start_5
    sget-object v19, Lorg/nyanya/android/traditionalt9/LangHelper;->LANGS:[Ljava/lang/String;

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, p4

    move/from16 v1, v19

    if-lt v0, v1, :cond_2

    .line 400
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p2

    iput-boolean v0, v1, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$Reply;->status:Z

    .line 401
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Unsupported language ("

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ") at line "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ". Trying 0 (en) for language."

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$Reply;->addMsg(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 402
    const/16 p4, 0x0

    .line 412
    .end local v18    # "ws":[Ljava/lang/String;
    :cond_2
    :goto_4
    :try_start_6
    const-string v19, "UTF-8"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v19

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v17, v0
    :try_end_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 419
    .local v17, "wordlen":I
    :goto_5
    :try_start_7
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$LoadDictTask;->pos:J

    move-wide/from16 v19, v0

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v21, v0

    add-long v19, v19, v21

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$LoadDictTask;->pos:J

    .line 421
    const-string v19, "\ufeff"

    const-string v20, ""

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v14

    .line 423
    :try_start_8
    move/from16 v0, p4

    invoke-static {v14, v0}, Lorg/nyanya/android/traditionalt9/CharMap;->getStringSequence(Ljava/lang/String;I)Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result-object v11

    .line 431
    .local v11, "seq":Ljava/lang/String;
    add-int/lit8 v10, v10, 0x1

    .line 432
    :try_start_9
    invoke-virtual/range {v16 .. v16}, Landroid/database/DatabaseUtils$InsertHelper;->prepareForReplace()V

    .line 433
    move-object/from16 v0, v16

    invoke-virtual {v0, v12, v11}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    .line 434
    move-object/from16 v0, v16

    move/from16 v1, p4

    invoke-virtual {v0, v7, v1}, Landroid/database/DatabaseUtils$InsertHelper;->bind(II)V

    .line 435
    move-object/from16 v0, v16

    invoke-virtual {v0, v15, v14}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    .line 436
    move-object/from16 v0, v16

    invoke-virtual {v0, v6, v5}, Landroid/database/DatabaseUtils$InsertHelper;->bind(II)V

    .line 437
    invoke-virtual/range {v16 .. v16}, Landroid/database/DatabaseUtils$InsertHelper;->execute()J

    .line 441
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$LoadDictTask;->pos:J

    move-wide/from16 v19, v0

    sub-long v19, v19, v8

    const-wide/16 v21, 0x1000

    cmp-long v19, v19, v21

    if-lez v19, :cond_3

    .line 444
    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$LoadDictTask;->pos:J

    move-wide/from16 v21, v0

    move-wide/from16 v0, v21

    long-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$LoadDictTask;->size:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    long-to-float v0, v0

    move/from16 v22, v0

    div-float v21, v21, v22

    const v22, 0x461c4000

    mul-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$LoadDictTask;->publishProgress([Ljava/lang/Object;)V

    .line 445
    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$LoadDictTask;->pos:J

    .line 447
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p5

    invoke-direct {v0, v3, v1, v2}, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$LoadDictTask;->getLine(Ljava/io/BufferedReader;Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$Reply;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_0

    .line 386
    .end local v5    # "freq":I
    .end local v11    # "seq":Ljava/lang/String;
    .end local v17    # "wordlen":I
    .restart local v18    # "ws":[Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 387
    .local v4, "e":Ljava/lang/NumberFormatException;
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p2

    iput-boolean v0, v1, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$Reply;->status:Z

    .line 388
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Number error ("

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ") at line "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ". Using 0 for frequency."

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$Reply;->addMsg(Ljava/lang/String;)V

    .line 389
    const/4 v5, 0x0

    .restart local v5    # "freq":I
    goto/16 :goto_2

    .line 394
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v4

    .line 395
    .restart local v4    # "e":Ljava/lang/NumberFormatException;
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p2

    iput-boolean v0, v1, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$Reply;->status:Z

    .line 396
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Number error ("

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ") at line "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ". Using 0 (en) for language."

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$Reply;->addMsg(Ljava/lang/String;)V

    .line 397
    const/16 p4, 0x0

    goto/16 :goto_3

    .line 404
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    :cond_4
    const/16 v19, -0x1

    move/from16 v0, p4

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    .line 405
    const/16 p4, 0x0

    goto/16 :goto_4

    .line 408
    .end local v5    # "freq":I
    .end local v18    # "ws":[Ljava/lang/String;
    :cond_5
    const/4 v5, 0x0

    .restart local v5    # "freq":I
    goto/16 :goto_4

    .line 413
    :catch_2
    move-exception v4

    .line 414
    .local v4, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v4}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 415
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p2

    iput-boolean v0, v1, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$Reply;->status:Z

    .line 416
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Encoding Error("

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ") line "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ": "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v4}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$Reply;->addMsg(Ljava/lang/String;)V

    .line 417
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v17

    .restart local v17    # "wordlen":I
    goto/16 :goto_5

    .line 424
    .end local v4    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_3
    move-exception v4

    .line 425
    .local v4, "e":Ljava/lang/NullPointerException;
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p2

    iput-boolean v0, v1, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$Reply;->status:Z

    .line 426
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Error on word ("

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ") line "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " in ("

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "): "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$LoadDictTask;->this$0:Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f080002

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    sget-object v24, Lorg/nyanya/android/traditionalt9/LangHelper;->LANGS:[Ljava/lang/String;

    aget-object v24, v24, p4

    aput-object v24, v22, v23

    invoke-virtual/range {v20 .. v22}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$Reply;->addMsg(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_1

    .line 452
    .end local v4    # "e":Ljava/lang/NullPointerException;
    .end local v5    # "freq":I
    .end local v17    # "wordlen":I
    :catchall_0
    move-exception v19

    const/16 v20, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->setLockingEnabled(Z)V

    .line 453
    invoke-virtual/range {p3 .. p3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 454
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 455
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->close()V

    .line 456
    invoke-virtual {v13}, Lcom/stackoverflow/answer/UnicodeBOMInputStream;->close()V

    .line 457
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->close()V

    .line 458
    invoke-virtual/range {v16 .. v16}, Landroid/database/DatabaseUtils$InsertHelper;->close()V

    throw v19
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 132
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$LoadDictTask;->doInBackground([Ljava/lang/String;)Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$Reply;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$Reply;
    .locals 23
    .param p1, "mode"    # [Ljava/lang/String;

    .prologue
    .line 228
    new-instance v4, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$Reply;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$LoadDictTask;->this$0:Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;

    invoke-direct {v4, v2}, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$Reply;-><init>(Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;)V

    .line 230
    .local v4, "reply":Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$Reply;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$LoadDictTask;->this$0:Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;

    iget-object v2, v2, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lorg/nyanya/android/traditionalt9/T9DB;->getSQLDB(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 231
    .local v5, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-nez v5, :cond_0

    .line 232
    const-string v2, "Database unavailable at this time. (May be updating)"

    invoke-virtual {v4, v2}, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$Reply;->forceMsg(Ljava/lang/String;)V

    .line 233
    const/4 v2, 0x0

    iput-boolean v2, v4, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$Reply;->status:Z

    move-object/from16 v17, v4

    .line 319
    .end local v4    # "reply":Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$Reply;
    .local v17, "reply":Ljava/lang/Object;
    :goto_0
    return-object v17

    .line 236
    .end local v17    # "reply":Ljava/lang/Object;
    .restart local v4    # "reply":Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$Reply;
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->setLockingEnabled(Z)V

    .line 239
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18

    .line 242
    .local v18, "startnow":J
    const-string v2, "doInBackground"

    const-string v6, "Adding characters..."

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$LoadDictTask;->mSupportedLanguages:[I

    .local v8, "arr$":[I
    array-length v15, v8

    .local v15, "len$":I
    const/4 v13, 0x0

    .local v13, "i$":I
    :goto_1
    if-ge v13, v15, :cond_1

    aget v14, v8, v13

    .line 245
    .local v14, "lang":I
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v14}, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$LoadDictTask;->processChars(Landroid/database/sqlite/SQLiteDatabase;I)V

    .line 244
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 247
    .end local v14    # "lang":I
    :cond_1
    const-string v2, "doInBackground"

    const-string v6, "done."

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    const-string v2, "doInBackground"

    const-string v6, "Adding dict(s)..."

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    const/4 v9, 0x0

    .line 254
    .local v9, "dictstream":Ljava/io/InputStream;
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$LoadDictTask;->restore:Z
    :try_end_0
    .catch Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$LoadException; {:try_start_0 .. :try_end_0} :catch_6

    if-eqz v2, :cond_2

    .line 256
    :try_start_1
    new-instance v3, Ljava/io/FileInputStream;

    new-instance v2, Ljava/io/File;

    new-instance v6, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    const-string v21, "traditionalt9"

    move-object/from16 v0, v21

    invoke-direct {v6, v7, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v7, "t9backup.txt"

    invoke-direct {v2, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$LoadException; {:try_start_1 .. :try_end_1} :catch_6

    .line 258
    .end local v9    # "dictstream":Ljava/io/InputStream;
    .local v3, "dictstream":Ljava/io/InputStream;
    const/4 v6, -0x1

    :try_start_2
    const-string v7, "t9backup.txt"

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$LoadDictTask;->processFile(Ljava/io/InputStream;Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$Reply;Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$Reply;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$LoadException; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v4

    .line 270
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$LoadDictTask;->this$0:Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;

    # invokes: Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;->closeStream(Ljava/io/Closeable;Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$Reply;)V
    invoke-static {v2, v3, v4}, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;->access$100(Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;Ljava/io/Closeable;Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$Reply;)V
    :try_end_3
    .catch Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$LoadException; {:try_start_3 .. :try_end_3} :catch_3

    .line 317
    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    .line 318
    .local v11, "endnow":J
    const-string v2, "TIMING"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Execution time: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long v21, v11, v18

    move-wide/from16 v0, v21

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v17, v4

    .line 319
    .restart local v17    # "reply":Ljava/lang/Object;
    goto/16 :goto_0

    .line 259
    .end local v3    # "dictstream":Ljava/io/InputStream;
    .end local v11    # "endnow":J
    .end local v17    # "reply":Ljava/lang/Object;
    .restart local v9    # "dictstream":Ljava/io/InputStream;
    :catch_0
    move-exception v10

    move-object v3, v9

    .line 260
    .end local v9    # "dictstream":Ljava/io/InputStream;
    .restart local v3    # "dictstream":Ljava/io/InputStream;
    .local v10, "e":Ljava/io/FileNotFoundException;
    :goto_3
    const/4 v2, 0x0

    :try_start_4
    iput-boolean v2, v4, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$Reply;->status:Z

    .line 261
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Backup file not found: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v10}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$Reply;->forceMsg(Ljava/lang/String;)V

    .line 262
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$LoadDictTask;->this$0:Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;

    # invokes: Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;->closeStream(Ljava/io/Closeable;Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$Reply;)V
    invoke-static {v2, v3, v4}, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;->access$100(Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;Ljava/io/Closeable;Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$Reply;)V

    move-object/from16 v17, v4

    .line 263
    .restart local v17    # "reply":Ljava/lang/Object;
    goto/16 :goto_0

    .line 264
    .end local v3    # "dictstream":Ljava/io/InputStream;
    .end local v10    # "e":Ljava/io/FileNotFoundException;
    .end local v17    # "reply":Ljava/lang/Object;
    .restart local v9    # "dictstream":Ljava/io/InputStream;
    :catch_1
    move-exception v10

    move-object v3, v9

    .line 265
    .end local v9    # "dictstream":Ljava/io/InputStream;
    .restart local v3    # "dictstream":Ljava/io/InputStream;
    .local v10, "e":Ljava/io/IOException;
    :goto_4
    const/4 v2, 0x0

    iput-boolean v2, v4, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$Reply;->status:Z

    .line 266
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IO Error: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v10}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$Reply;->forceMsg(Ljava/lang/String;)V

    .line 267
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$LoadDictTask;->this$0:Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;

    # invokes: Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;->closeStream(Ljava/io/Closeable;Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$Reply;)V
    invoke-static {v2, v3, v4}, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;->access$100(Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;Ljava/io/Closeable;Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$Reply;)V
    :try_end_4
    .catch Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$LoadException; {:try_start_4 .. :try_end_4} :catch_3

    move-object/from16 v17, v4

    .line 268
    .restart local v17    # "reply":Ljava/lang/Object;
    goto/16 :goto_0

    .line 272
    .end local v3    # "dictstream":Ljava/io/InputStream;
    .end local v10    # "e":Ljava/io/IOException;
    .end local v17    # "reply":Ljava/lang/Object;
    .restart local v9    # "dictstream":Ljava/io/InputStream;
    :cond_2
    const/16 v20, 0x0

    .local v20, "x":I
    :goto_5
    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$LoadDictTask;->dicts:[Ljava/lang/String;

    array-length v2, v2

    move/from16 v0, v20

    if-ge v0, v2, :cond_4

    .line 273
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$LoadDictTask;->internal:Z
    :try_end_5
    .catch Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$LoadException; {:try_start_5 .. :try_end_5} :catch_6

    if-eqz v2, :cond_3

    .line 275
    :try_start_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$LoadDictTask;->this$0:Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;

    invoke-virtual {v2}, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$LoadDictTask;->dicts:[Ljava/lang/String;

    aget-object v6, v6, v20

    invoke-virtual {v2, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$LoadException; {:try_start_6 .. :try_end_6} :catch_6

    move-result-object v3

    .line 276
    .end local v9    # "dictstream":Ljava/io/InputStream;
    .restart local v3    # "dictstream":Ljava/io/InputStream;
    :try_start_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$LoadDictTask;->mSupportedLanguages:[I

    aget v6, v2, v20

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$LoadDictTask;->dicts:[Ljava/lang/String;

    aget-object v7, v2, v20

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$LoadDictTask;->processFile(Ljava/io/InputStream;Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$Reply;Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$Reply;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_9
    .catch Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$LoadException; {:try_start_7 .. :try_end_7} :catch_3

    move-result-object v4

    .line 310
    :goto_6
    :try_start_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$LoadDictTask;->this$0:Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;

    # invokes: Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;->closeStream(Ljava/io/Closeable;Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$Reply;)V
    invoke-static {v2, v3, v4}, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;->access$100(Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;Ljava/io/Closeable;Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$Reply;)V

    .line 272
    add-int/lit8 v20, v20, 0x1

    move-object v9, v3

    .end local v3    # "dictstream":Ljava/io/InputStream;
    .restart local v9    # "dictstream":Ljava/io/InputStream;
    goto :goto_5

    .line 277
    :catch_2
    move-exception v10

    move-object v3, v9

    .line 278
    .end local v9    # "dictstream":Ljava/io/InputStream;
    .restart local v3    # "dictstream":Ljava/io/InputStream;
    .restart local v10    # "e":Ljava/io/IOException;
    :goto_7
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    .line 279
    const/4 v2, 0x0

    iput-boolean v2, v4, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$Reply;->status:Z

    .line 280
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IO Error: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v10}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$Reply;->forceMsg(Ljava/lang/String;)V
    :try_end_8
    .catch Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$LoadException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_6

    .line 313
    .end local v10    # "e":Ljava/io/IOException;
    .end local v20    # "x":I
    :catch_3
    move-exception v10

    .line 315
    .local v10, "e":Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$LoadException;
    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$LoadDictTask;->this$0:Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;

    # invokes: Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;->closeStream(Ljava/io/Closeable;Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$Reply;)V
    invoke-static {v2, v3, v4}, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;->access$100(Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;Ljava/io/Closeable;Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$Reply;)V

    goto/16 :goto_2

    .line 284
    .end local v3    # "dictstream":Ljava/io/InputStream;
    .end local v10    # "e":Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$LoadException;
    .restart local v9    # "dictstream":Ljava/io/InputStream;
    .restart local v20    # "x":I
    :cond_3
    :try_start_9
    new-instance v3, Ljava/io/FileInputStream;

    new-instance v2, Ljava/io/File;

    new-instance v6, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    const-string v21, "traditionalt9"

    move-object/from16 v0, v21

    invoke-direct {v6, v7, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$LoadDictTask;->dicts:[Ljava/lang/String;

    aget-object v7, v7, v20

    invoke-direct {v2, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$LoadException; {:try_start_9 .. :try_end_9} :catch_6

    .line 286
    .end local v9    # "dictstream":Ljava/io/InputStream;
    .restart local v3    # "dictstream":Ljava/io/InputStream;
    :try_start_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$LoadDictTask;->mSupportedLanguages:[I

    aget v6, v2, v20

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$LoadDictTask;->dicts:[Ljava/lang/String;

    aget-object v7, v2, v20

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$LoadDictTask;->processFile(Ljava/io/InputStream;Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$Reply;Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$Reply;
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_8
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7
    .catch Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$LoadException; {:try_start_a .. :try_end_a} :catch_3

    move-result-object v4

    goto :goto_6

    .line 287
    .end local v3    # "dictstream":Ljava/io/InputStream;
    .restart local v9    # "dictstream":Ljava/io/InputStream;
    :catch_4
    move-exception v10

    move-object v3, v9

    .line 288
    .end local v9    # "dictstream":Ljava/io/InputStream;
    .restart local v3    # "dictstream":Ljava/io/InputStream;
    .local v10, "e":Ljava/io/FileNotFoundException;
    :goto_9
    const/4 v2, 0x0

    :try_start_b
    iput-boolean v2, v4, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$Reply;->status:Z

    .line 289
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "File not found: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v10}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$Reply;->forceMsg(Ljava/lang/String;)V

    .line 290
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$LoadDictTask;->this$0:Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;

    iget-object v2, v2, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;->mContext:Landroid/content/Context;

    const v6, 0x7f080024

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$LoadDictTask;->dicts:[Ljava/lang/String;

    move-object/from16 v22, v0

    aget-object v22, v22, v20

    aput-object v22, v7, v21

    invoke-virtual {v2, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 292
    .local v16, "msg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$LoadDictTask;->this$0:Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;

    iget-object v2, v2, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    new-instance v6, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$LoadDictTask$1;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v6, v0, v1}, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$LoadDictTask$1;-><init>(Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$LoadDictTask;Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 301
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$LoadDictTask;->this$0:Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;

    # invokes: Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;->closeStream(Ljava/io/Closeable;Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$Reply;)V
    invoke-static {v2, v3, v4}, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;->access$100(Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;Ljava/io/Closeable;Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$Reply;)V

    goto/16 :goto_6

    .line 303
    .end local v3    # "dictstream":Ljava/io/InputStream;
    .end local v10    # "e":Ljava/io/FileNotFoundException;
    .end local v16    # "msg":Ljava/lang/String;
    .restart local v9    # "dictstream":Ljava/io/InputStream;
    :catch_5
    move-exception v10

    move-object v3, v9

    .line 304
    .end local v9    # "dictstream":Ljava/io/InputStream;
    .restart local v3    # "dictstream":Ljava/io/InputStream;
    .local v10, "e":Ljava/io/IOException;
    :goto_a
    const/4 v2, 0x0

    iput-boolean v2, v4, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$Reply;->status:Z

    .line 305
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IO Error: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v10}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$Reply;->forceMsg(Ljava/lang/String;)V

    .line 306
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$LoadDictTask;->this$0:Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;

    # invokes: Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;->closeStream(Ljava/io/Closeable;Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$Reply;)V
    invoke-static {v2, v3, v4}, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;->access$100(Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;Ljava/io/Closeable;Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$Reply;)V
    :try_end_b
    .catch Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$LoadException; {:try_start_b .. :try_end_b} :catch_3

    move-object/from16 v17, v4

    .line 307
    .restart local v17    # "reply":Ljava/lang/Object;
    goto/16 :goto_0

    .line 313
    .end local v3    # "dictstream":Ljava/io/InputStream;
    .end local v10    # "e":Ljava/io/IOException;
    .end local v17    # "reply":Ljava/lang/Object;
    .end local v20    # "x":I
    .restart local v9    # "dictstream":Ljava/io/InputStream;
    :catch_6
    move-exception v10

    move-object v3, v9

    .end local v9    # "dictstream":Ljava/io/InputStream;
    .restart local v3    # "dictstream":Ljava/io/InputStream;
    goto/16 :goto_8

    .line 303
    .restart local v20    # "x":I
    :catch_7
    move-exception v10

    goto :goto_a

    .line 287
    :catch_8
    move-exception v10

    goto/16 :goto_9

    .line 277
    :catch_9
    move-exception v10

    goto/16 :goto_7

    .line 264
    .end local v20    # "x":I
    :catch_a
    move-exception v10

    goto/16 :goto_4

    .line 259
    :catch_b
    move-exception v10

    goto/16 :goto_3

    .end local v3    # "dictstream":Ljava/io/InputStream;
    .restart local v9    # "dictstream":Ljava/io/InputStream;
    .restart local v20    # "x":I
    :cond_4
    move-object v3, v9

    .end local v9    # "dictstream":Ljava/io/InputStream;
    .restart local v3    # "dictstream":Ljava/io/InputStream;
    goto/16 :goto_2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 132
    check-cast p1, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$Reply;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$LoadDictTask;->onPostExecute(Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$Reply;)V

    return-void
.end method

.method protected onPostExecute(Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$Reply;)V
    .locals 3
    .param p1, "result"    # Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$Reply;

    .prologue
    .line 472
    iget-boolean v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$LoadDictTask;->restore:Z

    if-eqz v0, :cond_0

    .line 473
    iget-object v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$LoadDictTask;->this$0:Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;

    iget-object v1, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$LoadDictTask;->pd:Landroid/app/ProgressDialog;

    const v2, 0x7f080030

    # invokes: Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;->finishAndShowError(Landroid/app/ProgressDialog;Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$Reply;I)V
    invoke-static {v0, v1, p1, v2}, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;->access$200(Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;Landroid/app/ProgressDialog;Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$Reply;I)V

    .line 477
    :goto_0
    return-void

    .line 475
    :cond_0
    iget-object v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$LoadDictTask;->this$0:Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;

    iget-object v1, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$LoadDictTask;->pd:Landroid/app/ProgressDialog;

    const v2, 0x7f08001f

    # invokes: Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;->finishAndShowError(Landroid/app/ProgressDialog;Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$Reply;I)V
    invoke-static {v0, v1, p1, v2}, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;->access$200(Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;Landroid/app/ProgressDialog;Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$Reply;I)V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    .line 215
    iget-boolean v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$LoadDictTask;->internal:Z

    iget-boolean v1, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$LoadDictTask;->restore:Z

    iget-object v2, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$LoadDictTask;->dicts:[Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$LoadDictTask;->getDictSizes(ZZ[Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$LoadDictTask;->size:J

    .line 216
    iput-wide v3, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$LoadDictTask;->pos:J

    .line 217
    iget-wide v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$LoadDictTask;->size:J

    cmp-long v0, v0, v3

    if-ltz v0, :cond_0

    .line 218
    iget-object v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$LoadDictTask;->pd:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 219
    iget-object v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$LoadDictTask;->pd:Landroid/app/ProgressDialog;

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 223
    :goto_0
    iget-object v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$LoadDictTask;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 224
    return-void

    .line 221
    :cond_0
    iget-object v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$LoadDictTask;->pd:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    goto :goto_0
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 2
    .param p1, "progress"    # [Ljava/lang/Integer;

    .prologue
    .line 465
    iget-object v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$LoadDictTask;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 466
    iget-object v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$LoadDictTask;->pd:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 468
    :cond_0
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 132
    check-cast p1, [Ljava/lang/Integer;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$LoadDictTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
