.class Lorg/nyanya/android/traditionalt9/T9DB$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "T9DB.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/nyanya/android/traditionalt9/T9DB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DatabaseHelper"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 392
    const-string v0, "t9dict.db"

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v2, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 389
    iput-object v2, p0, Lorg/nyanya/android/traditionalt9/T9DB$DatabaseHelper;->mContext:Landroid/content/Context;

    .line 393
    iput-object p1, p0, Lorg/nyanya/android/traditionalt9/T9DB$DatabaseHelper;->mContext:Landroid/content/Context;

    .line 394
    return-void
.end method


# virtual methods
.method protected needsUpgrading()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 399
    iget-object v3, p0, Lorg/nyanya/android/traditionalt9/T9DB$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->databaseList()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-lez v3, :cond_0

    .line 400
    iget-object v3, p0, Lorg/nyanya/android/traditionalt9/T9DB$DatabaseHelper;->mContext:Landroid/content/Context;

    const-string v4, "t9dict.db"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 401
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v1

    .line 402
    .local v1, "version":I
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 403
    const/4 v3, 0x2

    if-ge v1, v3, :cond_0

    const/4 v2, 0x1

    .line 405
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "version":I
    :cond_0
    return v2
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 410
    const-string v0, "CREATE TABLE IF NOT EXISTS word (_id INTEGER PRIMARY KEY AUTOINCREMENT, lang INTEGER, seq TEXT, word TEXT, freq INTEGER, UNIQUE(lang, word) )"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 417
    const-string v0, "CREATE INDEX idx ON word(lang, seq ASC, freq DESC )"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 419
    const-string v0, "CREATE TRIGGER IF NOT EXISTS freqtrigger AFTER UPDATE ON word WHEN NEW.freq > 50000 BEGIN UPDATE word SET freq = freq / 10000 WHERE seq = NEW.seq; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 427
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    const/4 v4, 0x0

    .line 431
    const-string v1, "T9DB.onUpgrade"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Upgrading database from version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 433
    const-string v1, "ALTER TABLE word ADD COLUMN lang INTEGER"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 435
    const-string v1, "DROP INDEX IF EXISTS idx"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 436
    invoke-virtual {p0, p1}, Lorg/nyanya/android/traditionalt9/T9DB$DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 437
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 438
    .local v0, "updatedata":Landroid/content/ContentValues;
    const-string v1, "lang"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 439
    const-string v1, "word"

    invoke-virtual {p1, v1, v0, v4, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 441
    .end local v0    # "updatedata":Landroid/content/ContentValues;
    :cond_0
    const-string v1, "T9DB.onUpgrade"

    const-string v2, "Done."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    return-void
.end method
