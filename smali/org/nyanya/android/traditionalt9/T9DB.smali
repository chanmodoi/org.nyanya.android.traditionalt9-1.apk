.class public Lorg/nyanya/android/traditionalt9/T9DB;
.super Ljava/lang/Object;
.source "T9DB.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/nyanya/android/traditionalt9/T9DB$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final CAPS_ALL:I = 0x2

.field private static final CAPS_OFF:I = 0x0

.field private static final CAPS_SINGLE:I = 0x1

.field protected static final COLUMN_FREQUENCY:Ljava/lang/String; = "freq"

.field protected static final COLUMN_ID:Ljava/lang/String; = "_id"

.field protected static final COLUMN_LANG:Ljava/lang/String; = "lang"

.field protected static final COLUMN_SEQ:Ljava/lang/String; = "seq"

.field protected static final COLUMN_WORD:Ljava/lang/String; = "word"

.field protected static final DATABASE_NAME:Ljava/lang/String; = "t9dict.db"

.field protected static final DATABASE_VERSION:I = 0x2

.field private static final FREQ_DIV:I = 0x2710

.field private static final FREQ_MAX:I = 0xc350

.field protected static final FREQ_TRIGGER_NAME:Ljava/lang/String; = "freqtrigger"

.field private static final MAX_RESULTS:I = 0x8

.field private static final MINHITS:I = 0x4

.field private static final QUERY1:Ljava/lang/String; = "SELECT _id, word FROM word WHERE lang=? AND seq=? ORDER BY freq DESC"

.field protected static final WORD_TABLE_NAME:Ljava/lang/String; = "word"

.field private static volatile instance:Lorg/nyanya/android/traditionalt9/T9DB;


# instance fields
.field private db:Landroid/database/sqlite/SQLiteDatabase;

.field private mContext:Landroid/content/Context;

.field private mOpenHelper:Lorg/nyanya/android/traditionalt9/T9DB$DatabaseHelper;

.field protected ready:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-object v0, Lorg/nyanya/android/traditionalt9/T9DB;->instance:Lorg/nyanya/android/traditionalt9/T9DB;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "caller"    # Landroid/content/Context;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/nyanya/android/traditionalt9/T9DB;->ready:Z

    .line 58
    iput-object p1, p0, Lorg/nyanya/android/traditionalt9/T9DB;->mContext:Landroid/content/Context;

    .line 59
    new-instance v0, Lorg/nyanya/android/traditionalt9/T9DB$DatabaseHelper;

    invoke-direct {v0, p1}, Lorg/nyanya/android/traditionalt9/T9DB$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/nyanya/android/traditionalt9/T9DB;->mOpenHelper:Lorg/nyanya/android/traditionalt9/T9DB$DatabaseHelper;

    .line 60
    return-void
.end method

.method protected static getInstance(Landroid/content/Context;)Lorg/nyanya/android/traditionalt9/T9DB;
    .locals 2
    .param p0, "caller"    # Landroid/content/Context;

    .prologue
    .line 63
    sget-object v0, Lorg/nyanya/android/traditionalt9/T9DB;->instance:Lorg/nyanya/android/traditionalt9/T9DB;

    if-nez v0, :cond_1

    .line 64
    const-class v1, Lorg/nyanya/android/traditionalt9/T9DB;

    monitor-enter v1

    .line 65
    :try_start_0
    sget-object v0, Lorg/nyanya/android/traditionalt9/T9DB;->instance:Lorg/nyanya/android/traditionalt9/T9DB;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Lorg/nyanya/android/traditionalt9/T9DB;

    invoke-direct {v0, p0}, Lorg/nyanya/android/traditionalt9/T9DB;-><init>(Landroid/content/Context;)V

    sput-object v0, Lorg/nyanya/android/traditionalt9/T9DB;->instance:Lorg/nyanya/android/traditionalt9/T9DB;

    .line 67
    sget-object v0, Lorg/nyanya/android/traditionalt9/T9DB;->instance:Lorg/nyanya/android/traditionalt9/T9DB;

    invoke-direct {v0}, Lorg/nyanya/android/traditionalt9/T9DB;->init()V

    .line 69
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    :cond_1
    sget-object v0, Lorg/nyanya/android/traditionalt9/T9DB;->instance:Lorg/nyanya/android/traditionalt9/T9DB;

    return-object v0

    .line 69
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected static getSQLDB(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 2
    .param p0, "caller"    # Landroid/content/Context;

    .prologue
    .line 75
    invoke-static {p0}, Lorg/nyanya/android/traditionalt9/T9DB;->getInstance(Landroid/content/Context;)Lorg/nyanya/android/traditionalt9/T9DB;

    move-result-object v0

    .line 77
    .local v0, "t9dbhelper":Lorg/nyanya/android/traditionalt9/T9DB;
    iget-object v1, v0, Lorg/nyanya/android/traditionalt9/T9DB;->db:Landroid/database/sqlite/SQLiteDatabase;

    return-object v1
.end method

.method private init()V
    .locals 3

    .prologue
    .line 81
    iget-object v1, p0, Lorg/nyanya/android/traditionalt9/T9DB;->mOpenHelper:Lorg/nyanya/android/traditionalt9/T9DB$DatabaseHelper;

    invoke-virtual {v1}, Lorg/nyanya/android/traditionalt9/T9DB$DatabaseHelper;->needsUpgrading()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 82
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/nyanya/android/traditionalt9/T9DB;->ready:Z

    .line 83
    const-string v1, "T9.init"

    const-string v2, "needsUpgrading"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object v1, p0, Lorg/nyanya/android/traditionalt9/T9DB;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_0

    .line 87
    :try_start_0
    iget-object v1, p0, Lorg/nyanya/android/traditionalt9/T9DB;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/nyanya/android/traditionalt9/T9DB;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 91
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lorg/nyanya/android/traditionalt9/T9DB;->mContext:Landroid/content/Context;

    const-class v2, Lorg/nyanya/android/traditionalt9/DBUpdateService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 92
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "T9.init"

    const-string v2, "Invoking update service..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v1, p0, Lorg/nyanya/android/traditionalt9/T9DB;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 98
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_1
    return-void

    .line 96
    :cond_1
    iget-object v1, p0, Lorg/nyanya/android/traditionalt9/T9DB;->mOpenHelper:Lorg/nyanya/android/traditionalt9/T9DB$DatabaseHelper;

    invoke-virtual {v1}, Lorg/nyanya/android/traditionalt9/T9DB$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lorg/nyanya/android/traditionalt9/T9DB;->db:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_1

    .line 88
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method protected addWord(Ljava/lang/String;I)V
    .locals 10
    .param p1, "iword"    # Ljava/lang/String;
    .param p2, "lang"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/nyanya/android/traditionalt9/DBException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 148
    iget-object v5, p0, Lorg/nyanya/android/traditionalt9/T9DB;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 149
    .local v2, "r":Landroid/content/res/Resources;
    const-string v5, ""

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 150
    new-instance v5, Lorg/nyanya/android/traditionalt9/DBException;

    const v6, 0x7f080003

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/nyanya/android/traditionalt9/DBException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 155
    :cond_0
    :try_start_0
    invoke-static {p1, p2}, Lorg/nyanya/android/traditionalt9/CharMap;->getStringSequence(Ljava/lang/String;I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 160
    .local v3, "seq":Ljava/lang/String;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 161
    .local v4, "values":Landroid/content/ContentValues;
    const-string v5, "seq"

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const-string v5, "lang"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 164
    const-string v5, "word"

    invoke-virtual {v4, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const-string v5, "freq"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 166
    invoke-virtual {p0}, Lorg/nyanya/android/traditionalt9/T9DB;->checkReady()Z

    move-result v5

    if-nez v5, :cond_1

    .line 167
    const-string v5, "T9DB.addWord"

    const-string v6, "not ready"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v5, p0, Lorg/nyanya/android/traditionalt9/T9DB;->mContext:Landroid/content/Context;

    const v6, 0x7f080009

    invoke-static {v5, v6, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 178
    :goto_0
    return-void

    .line 156
    .end local v3    # "seq":Ljava/lang/String;
    .end local v4    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v0

    .line 157
    .local v0, "e":Ljava/lang/NullPointerException;
    new-instance v5, Lorg/nyanya/android/traditionalt9/DBException;

    const v6, 0x7f080002

    new-array v7, v8, [Ljava/lang/Object;

    sget-object v8, Lorg/nyanya/android/traditionalt9/LangHelper;->LANGS:[Ljava/lang/String;

    aget-object v8, v8, p2

    aput-object v8, v7, v9

    invoke-virtual {v2, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/nyanya/android/traditionalt9/DBException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 172
    .end local v0    # "e":Ljava/lang/NullPointerException;
    .restart local v3    # "seq":Ljava/lang/String;
    .restart local v4    # "values":Landroid/content/ContentValues;
    :cond_1
    :try_start_1
    iget-object v5, p0, Lorg/nyanya/android/traditionalt9/T9DB;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "word"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 173
    :catch_1
    move-exception v0

    .line 174
    .local v0, "e":Landroid/database/sqlite/SQLiteConstraintException;
    const v5, 0x7f080005

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v9

    sget-object v7, Lorg/nyanya/android/traditionalt9/LangHelper;->LANGS:[Ljava/lang/String;

    aget-object v7, v7, p2

    aput-object v7, v6, v8

    invoke-virtual {v2, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 175
    .local v1, "msg":Ljava/lang/String;
    const-string v5, "T9DB.addWord"

    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    new-instance v5, Lorg/nyanya/android/traditionalt9/DBException;

    invoke-direct {v5, v1}, Lorg/nyanya/android/traditionalt9/DBException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method protected checkReady()Z
    .locals 1

    .prologue
    .line 101
    iget-boolean v0, p0, Lorg/nyanya/android/traditionalt9/T9DB;->ready:Z

    if-eqz v0, :cond_1

    .line 102
    iget-object v0, p0, Lorg/nyanya/android/traditionalt9/T9DB;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    .line 103
    invoke-virtual {p0}, Lorg/nyanya/android/traditionalt9/T9DB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lorg/nyanya/android/traditionalt9/T9DB;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 105
    :cond_0
    const/4 v0, 0x1

    .line 107
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected close()V
    .locals 1

    .prologue
    .line 123
    :try_start_0
    iget-object v0, p0, Lorg/nyanya/android/traditionalt9/T9DB;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/nyanya/android/traditionalt9/T9DB;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 126
    return-void

    .line 124
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected getWord(Ljava/lang/String;I)Ljava/lang/String;
    .locals 11
    .param p1, "is"    # Ljava/lang/String;
    .param p2, "lang"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 194
    const/4 v5, 0x0

    .line 195
    .local v5, "result":Ljava/lang/String;
    const-string v4, "SELECT word FROM word WHERE lang=? AND seq=? ORDER BY freq DESC"

    .line 199
    .local v4, "q":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/nyanya/android/traditionalt9/T9DB;->checkReady()Z

    move-result v6

    if-nez v6, :cond_0

    .line 200
    const-string v6, "T9DB.getWord"

    const-string v7, "not ready"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v6, p0, Lorg/nyanya/android/traditionalt9/T9DB;->mContext:Landroid/content/Context;

    const v7, 0x7f080009

    invoke-static {v6, v7, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 202
    const-string v6, ""

    .line 231
    :goto_0
    return-object v6

    .line 204
    :cond_0
    iget-object v6, p0, Lorg/nyanya/android/traditionalt9/T9DB;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    aput-object p1, v7, v9

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-virtual {v6, v4, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 205
    .local v1, "cur":Landroid/database/Cursor;
    const/4 v2, 0x0

    .line 206
    .local v2, "hits":I
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 207
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 209
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 210
    if-eqz v5, :cond_2

    move-object v6, v5

    .line 211
    goto :goto_0

    .line 213
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 214
    .local v3, "islen":I
    add-int/lit8 v6, v3, -0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 215
    .local v0, "c":C
    add-int/lit8 v6, v0, 0x1

    int-to-char v0, v6

    .line 216
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SELECT word FROM word WHERE lang=? AND seq >= \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' AND "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "seq"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " < \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v3, -0x1

    invoke-virtual {p1, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ORDER BY "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "freq"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " DESC, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "seq"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ASC"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " LIMIT "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 221
    iget-object v6, p0, Lorg/nyanya/android/traditionalt9/T9DB;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-array v7, v10, [Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v6, v4, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 223
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 224
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 226
    :cond_3
    if-nez v5, :cond_4

    .line 227
    const-string v5, ""

    .line 229
    :cond_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v6, v5

    .line 231
    goto/16 :goto_0
.end method

.method protected getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lorg/nyanya/android/traditionalt9/T9DB;->mOpenHelper:Lorg/nyanya/android/traditionalt9/T9DB$DatabaseHelper;

    invoke-virtual {v0}, Lorg/nyanya/android/traditionalt9/T9DB$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method protected incrementWord(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 181
    invoke-virtual {p0}, Lorg/nyanya/android/traditionalt9/T9DB;->checkReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 182
    const-string v0, "T9DB.incrementWord"

    const-string v1, "not ready"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v0, p0, Lorg/nyanya/android/traditionalt9/T9DB;->mContext:Landroid/content/Context;

    const v1, 0x7f080009

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 191
    :goto_0
    return-void

    .line 186
    :cond_0
    iget-object v0, p0, Lorg/nyanya/android/traditionalt9/T9DB;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UPDATE word SET freq = freq+ 1 WHERE _id = \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected nuke()V
    .locals 3

    .prologue
    .line 129
    const-string v0, "T9DB.nuke"

    const-string v1, "Deleting database..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const-class v1, Lorg/nyanya/android/traditionalt9/T9DB;

    monitor-enter v1

    .line 131
    :try_start_0
    iget-object v0, p0, Lorg/nyanya/android/traditionalt9/T9DB;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lorg/nyanya/android/traditionalt9/T9DB;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 134
    :cond_0
    iget-object v0, p0, Lorg/nyanya/android/traditionalt9/T9DB;->mContext:Landroid/content/Context;

    const-string v2, "t9dict.db"

    invoke-virtual {v0, v2}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 135
    const-string v0, "T9DB"

    const-string v2, "Couldn\'t delete database."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_1
    const-string v0, "T9DB.nuke"

    const-string v2, "Preparing database..."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-virtual {p0}, Lorg/nyanya/android/traditionalt9/T9DB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 140
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/nyanya/android/traditionalt9/T9DB;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 141
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/nyanya/android/traditionalt9/T9DB;->ready:Z

    .line 142
    invoke-direct {p0}, Lorg/nyanya/android/traditionalt9/T9DB;->init()V

    .line 143
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    const-string v0, "T9DB.nuke"

    const-string v1, "Done..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    return-void

    .line 143
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected setSQLDB(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "tdb"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 116
    const-class v1, Lorg/nyanya/android/traditionalt9/T9DB;

    monitor-enter v1

    .line 117
    :try_start_0
    iput-object p1, p0, Lorg/nyanya/android/traditionalt9/T9DB;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 118
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/nyanya/android/traditionalt9/T9DB;->ready:Z

    .line 119
    monitor-exit v1

    .line 120
    return-void

    .line 119
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected updateWords(Ljava/lang/String;Ljava/util/AbstractList;Ljava/util/List;II)V
    .locals 16
    .param p1, "is"    # Ljava/lang/String;
    .param p4, "capsMode"    # I
    .param p5, "lang"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/AbstractList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 236
    .local p2, "stringList":Ljava/util/AbstractList;, "Ljava/util/AbstractList<Ljava/lang/String;>;"
    .local p3, "intList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual/range {p2 .. p2}, Ljava/util/AbstractList;->clear()V

    .line 237
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->clear()V

    .line 239
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 241
    .local v5, "islen":I
    invoke-virtual/range {p0 .. p0}, Lorg/nyanya/android/traditionalt9/T9DB;->checkReady()Z

    move-result v11

    if-nez v11, :cond_1

    .line 242
    const-string v11, "T9DB.updateWords"

    const-string v12, "not ready"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/nyanya/android/traditionalt9/T9DB;->mContext:Landroid/content/Context;

    const v12, 0x7f080009

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    .line 333
    :cond_0
    return-void

    .line 246
    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/nyanya/android/traditionalt9/T9DB;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v12, "SELECT _id, word FROM word WHERE lang=? AND seq=? ORDER BY freq DESC"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    invoke-static/range {p5 .. p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    aput-object p1, v13, v14

    invoke-virtual {v11, v12, v13}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 248
    .local v2, "cur":Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 249
    .local v3, "hits":I
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v11

    if-nez v11, :cond_2

    .line 250
    const/4 v11, 0x0

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    const/4 v11, 0x1

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/util/AbstractList;->add(Ljava/lang/Object;)Z

    .line 255
    add-int/lit8 v3, v3, 0x1

    .line 249
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 257
    :cond_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 259
    const/4 v11, 0x4

    if-ge v3, v11, :cond_4

    .line 260
    add-int/lit8 v11, v5, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 261
    .local v1, "c":C
    add-int/lit8 v11, v1, 0x1

    int-to-char v1, v11

    .line 262
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SELECT _id, word FROM word WHERE lang=? AND seq >= \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "1"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\' AND "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "seq"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " < \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x0

    add-int/lit8 v13, v5, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " ORDER BY "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "freq"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " DESC, "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "seq"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " ASC"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " LIMIT "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    rsub-int/lit8 v12, v3, 0x8

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 268
    .local v7, "q":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/nyanya/android/traditionalt9/T9DB;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    invoke-static/range {p5 .. p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v11, v7, v12}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 270
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v11

    if-nez v11, :cond_3

    .line 271
    const/4 v11, 0x0

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    const/4 v11, 0x1

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/util/AbstractList;->add(Ljava/lang/Object;)Z

    .line 273
    const/16 v11, 0x14

    if-lt v3, v11, :cond_5

    .line 278
    :cond_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 281
    .end local v1    # "c":C
    .end local v7    # "q":Ljava/lang/String;
    :cond_4
    if-eqz p4, :cond_0

    .line 286
    invoke-virtual/range {p2 .. p2}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 289
    .local v6, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 290
    .local v4, "index":I
    const/4 v8, 0x0

    .line 291
    .local v8, "removed":Z
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 292
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 293
    .local v9, "word":Ljava/lang/String;
    packed-switch p4, :pswitch_data_0

    .line 325
    :goto_3
    if-eqz v8, :cond_b

    .line 326
    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 327
    const/4 v8, 0x0

    goto :goto_2

    .line 276
    .end local v4    # "index":I
    .end local v6    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v8    # "removed":Z
    .end local v9    # "word":Ljava/lang/String;
    .restart local v1    # "c":C
    .restart local v7    # "q":Ljava/lang/String;
    :cond_5
    add-int/lit8 v3, v3, 0x1

    .line 270
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 295
    .end local v1    # "c":C
    .end local v7    # "q":Ljava/lang/String;
    .restart local v4    # "index":I
    .restart local v6    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v8    # "removed":Z
    .restart local v9    # "word":Ljava/lang/String;
    :pswitch_0
    sget-object v11, Lorg/nyanya/android/traditionalt9/LangHelper;->LOCALES:[Ljava/util/Locale;

    aget-object v11, v11, p5

    invoke-virtual {v9, v11}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    .line 296
    .local v10, "wordtemp":Ljava/lang/String;
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 297
    add-int/lit8 v4, v4, 0x1

    .line 298
    goto :goto_2

    .line 299
    :cond_6
    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/util/AbstractList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 301
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    .line 302
    const/4 v8, 0x1

    goto :goto_3

    .line 304
    :cond_7
    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v10}, Ljava/util/AbstractList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 308
    .end local v10    # "wordtemp":Ljava/lang/String;
    :pswitch_1
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x1

    if-le v11, v12, :cond_8

    .line 309
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-virtual {v9, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    sget-object v13, Lorg/nyanya/android/traditionalt9/LangHelper;->LOCALES:[Ljava/util/Locale;

    aget-object v13, v13, p5

    invoke-virtual {v12, v13}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v9, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 313
    .restart local v10    # "wordtemp":Ljava/lang/String;
    :goto_4
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 314
    add-int/lit8 v4, v4, 0x1

    .line 315
    goto :goto_2

    .line 311
    .end local v10    # "wordtemp":Ljava/lang/String;
    :cond_8
    sget-object v11, Lorg/nyanya/android/traditionalt9/LangHelper;->LOCALES:[Ljava/util/Locale;

    aget-object v11, v11, p5

    invoke-virtual {v9, v11}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    .restart local v10    # "wordtemp":Ljava/lang/String;
    goto :goto_4

    .line 316
    :cond_9
    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/util/AbstractList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 318
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    .line 319
    const/4 v8, 0x1

    goto :goto_3

    .line 321
    :cond_a
    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v10}, Ljava/util/AbstractList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 329
    .end local v10    # "wordtemp":Ljava/lang/String;
    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    .line 293
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected updateWordsW(Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;I)V
    .locals 9
    .param p1, "is"    # Ljava/lang/String;
    .param p5, "lang"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 337
    .local p2, "stringList":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .local p3, "intList":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    .local p4, "freq":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    invoke-interface {p2}, Ljava/util/Collection;->clear()V

    .line 338
    invoke-interface {p3}, Ljava/util/Collection;->clear()V

    .line 339
    invoke-interface {p4}, Ljava/util/Collection;->clear()V

    .line 341
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 342
    .local v3, "islen":I
    const-string v4, "SELECT _id, word, freq FROM word WHERE lang=? AND seq=? ORDER BY freq DESC"

    .line 346
    .local v4, "q":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/nyanya/android/traditionalt9/T9DB;->checkReady()Z

    move-result v5

    if-nez v5, :cond_1

    .line 347
    const-string v5, "T9DB.updateWordsW"

    const-string v6, "not ready"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    iget-object v5, p0, Lorg/nyanya/android/traditionalt9/T9DB;->mContext:Landroid/content/Context;

    const v6, 0x7f080009

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 385
    :cond_0
    :goto_0
    return-void

    .line 351
    :cond_1
    iget-object v5, p0, Lorg/nyanya/android/traditionalt9/T9DB;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x1

    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v5, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 352
    .local v1, "cur":Landroid/database/Cursor;
    const/4 v2, 0x0

    .line 353
    .local v2, "hits":I
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v5

    if-nez v5, :cond_2

    .line 354
    const/4 v5, 0x0

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 355
    const/4 v5, 0x1

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 356
    const/4 v5, 0x2

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 357
    const/16 v5, 0xa

    if-lt v2, v5, :cond_4

    .line 362
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 363
    const/4 v5, 0x4

    if-ge v2, v5, :cond_0

    .line 364
    add-int/lit8 v5, v3, -0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 365
    .local v0, "c":C
    add-int/lit8 v5, v0, 0x1

    int-to-char v0, v5

    .line 366
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SELECT _id, word, freq FROM word WHERE lang=? AND seq >= \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "seq"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " < \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    add-int/lit8 v7, v3, -0x1

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ORDER BY "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "freq"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " DESC, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "seq"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ASC"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " LIMIT "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    rsub-int/lit8 v6, v2, 0x8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 372
    iget-object v5, p0, Lorg/nyanya/android/traditionalt9/T9DB;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v5, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 374
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v5

    if-nez v5, :cond_3

    .line 375
    const/4 v5, 0x0

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 376
    const/4 v5, 0x1

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 377
    const/4 v5, 0x2

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 378
    const/16 v5, 0xa

    if-lt v2, v5, :cond_5

    .line 383
    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 360
    .end local v0    # "c":C
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 353
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_1

    .line 381
    .restart local v0    # "c":C
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 374
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_2
.end method
