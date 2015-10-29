.class Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$DumpDictTask;
.super Landroid/os/AsyncTask;
.source "TraditionalT9Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DumpDictTask"
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
.field pd:Landroid/app/ProgressDialog;

.field final synthetic this$0:Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;


# direct methods
.method constructor <init>(Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;I)V
    .locals 2
    .param p2, "msgid"    # I

    .prologue
    .line 484
    iput-object p1, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$DumpDictTask;->this$0:Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 485
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$DumpDictTask;->pd:Landroid/app/ProgressDialog;

    .line 486
    iget-object v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$DumpDictTask;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 487
    iget-object v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$DumpDictTask;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 488
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 480
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$DumpDictTask;->doInBackground([Ljava/lang/String;)Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$Reply;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$Reply;
    .locals 23
    .param p1, "ignore"    # [Ljava/lang/String;

    .prologue
    .line 496
    new-instance v16, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$Reply;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$DumpDictTask;->this$0:Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;

    move-object/from16 v19, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$Reply;-><init>(Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;)V

    .line 498
    .local v16, "reply":Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$Reply;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$DumpDictTask;->this$0:Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lorg/nyanya/android/traditionalt9/T9DB;->getSQLDB(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    .line 499
    .local v6, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-nez v6, :cond_0

    .line 500
    const-string v19, "Database unavailable at this time. (May be updating)"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$Reply;->forceMsg(Ljava/lang/String;)V

    .line 501
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$Reply;->status:Z

    .line 598
    :goto_0
    return-object v16

    .line 505
    :cond_0
    const/4 v5, 0x0

    .line 506
    .local v5, "current":I
    const/4 v14, 0x0

    .line 507
    .local v14, "pos":I
    const/4 v13, 0x0

    .line 508
    .local v13, "last":I
    new-instance v2, Ljava/io/File;

    new-instance v19, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v20

    const-string v21, "traditionalt9"

    invoke-direct/range {v19 .. v21}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v20, "t9backup.txt"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 511
    .local v2, "backupfile":Ljava/io/File;
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/database/sqlite/SQLiteDatabase;->setLockingEnabled(Z)V

    .line 513
    const-string v19, "doInBackground"

    const-string v20, "Dumping dict..."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    const/4 v7, 0x0

    .line 518
    .local v7, "dictstream":Ljava/io/OutputStream;
    :try_start_0
    new-instance v7, Ljava/io/FileOutputStream;

    .end local v7    # "dictstream":Ljava/io/OutputStream;
    invoke-direct {v7, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 526
    .restart local v7    # "dictstream":Ljava/io/OutputStream;
    :try_start_1
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v19, Ljava/io/OutputStreamWriter;

    const-string v20, "UTF-8"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v0, v7, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-direct {v3, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 535
    .local v3, "bw":Ljava/io/BufferedWriter;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v17

    .line 537
    .local v17, "startnow":J
    const-string v15, "SELECT count(*) FROM word"

    .line 538
    .local v15, "q":Ljava/lang/String;
    const/16 v19, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v6, v15, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 539
    .local v4, "cur":Landroid/database/Cursor;
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    .line 540
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    move/from16 v0, v19

    int-to-long v11, v0

    .line 542
    .local v11, "entries":J
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 544
    :goto_1
    int-to-long v0, v14

    move-wide/from16 v19, v0

    cmp-long v19, v19, v11

    if-gez v19, :cond_4

    .line 545
    :try_start_2
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "SELECT _id, lang, word, freq FROM word WHERE _id>"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " ORDER BY "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "_id"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " LIMIT "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x3e8

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 550
    const/16 v19, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v6, v15, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 551
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_2
    invoke-interface {v4}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v19

    if-nez v19, :cond_1

    .line 552
    invoke-virtual/range {p0 .. p0}, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$DumpDictTask;->isCancelled()Z

    move-result v19

    if-eqz v19, :cond_2

    .line 553
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$Reply;->status:Z

    .line 554
    const-string v19, "User cancelled."

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$Reply;->forceMsg(Ljava/lang/String;)V

    .line 577
    :cond_1
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 579
    :catchall_0
    move-exception v19

    throw v19

    .line 519
    .end local v3    # "bw":Ljava/io/BufferedWriter;
    .end local v4    # "cur":Landroid/database/Cursor;
    .end local v7    # "dictstream":Ljava/io/OutputStream;
    .end local v11    # "entries":J
    .end local v15    # "q":Ljava/lang/String;
    .end local v17    # "startnow":J
    :catch_0
    move-exception v8

    .line 520
    .local v8, "e":Ljava/io/FileNotFoundException;
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$Reply;->status:Z

    .line 521
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Backup file error: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v8}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$Reply;->forceMsg(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 527
    .end local v8    # "e":Ljava/io/FileNotFoundException;
    .restart local v7    # "dictstream":Ljava/io/OutputStream;
    :catch_1
    move-exception v8

    .line 528
    .local v8, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v8}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 529
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$Reply;->status:Z

    .line 530
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Encoding Error (backupfile): "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v8}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$Reply;->forceMsg(Ljava/lang/String;)V

    .line 531
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$DumpDictTask;->this$0:Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    # invokes: Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;->closeStream(Ljava/io/Closeable;Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$Reply;)V
    invoke-static {v0, v7, v1}, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;->access$100(Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;Ljava/io/Closeable;Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$Reply;)V

    goto/16 :goto_0

    .line 557
    .end local v8    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v3    # "bw":Ljava/io/BufferedWriter;
    .restart local v4    # "cur":Landroid/database/Cursor;
    .restart local v11    # "entries":J
    .restart local v15    # "q":Ljava/lang/String;
    .restart local v17    # "startnow":J
    :cond_2
    const/16 v19, 0x0

    :try_start_3
    move/from16 v0, v19

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v5

    .line 558
    add-int/lit8 v14, v14, 0x1

    .line 560
    const/16 v19, 0x2

    :try_start_4
    move/from16 v0, v19

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 561
    const-string v19, " "

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 562
    const/16 v19, 0x3

    move/from16 v0, v19

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 563
    const-string v19, " "

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 564
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 565
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 572
    :goto_3
    sub-int v19, v14, v13

    const/16 v20, 0x50

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_3

    .line 573
    const/16 v19, 0x1

    :try_start_5
    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    int-to-float v0, v14

    move/from16 v21, v0

    long-to-float v0, v11

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

    invoke-virtual {v0, v1}, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$DumpDictTask;->publishProgress([Ljava/lang/Object;)V

    .line 574
    move v13, v14

    .line 551
    :cond_3
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_2

    .line 566
    :catch_2
    move-exception v8

    .line 567
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 568
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$Reply;->status:Z

    .line 569
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Error: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$Reply;->forceMsg(Ljava/lang/String;)V

    .line 570
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$DumpDictTask;->this$0:Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    # invokes: Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;->closeStream(Ljava/io/Closeable;Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$Reply;)V
    invoke-static {v0, v7, v1}, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;->access$100(Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;Ljava/io/Closeable;Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$Reply;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 582
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_4
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

    invoke-virtual {v0, v1}, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$DumpDictTask;->publishProgress([Ljava/lang/Object;)V

    .line 584
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 585
    .local v9, "endnow":J
    const-string v19, "TIMING"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Execution time: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sub-long v21, v9, v17

    invoke-virtual/range {v20 .. v22}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " ms"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    const-string v19, "doInBackground"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "entries: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " last: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 593
    :goto_4
    :try_start_7
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 597
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$DumpDictTask;->this$0:Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    # invokes: Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;->closeStream(Ljava/io/Closeable;Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$Reply;)V
    invoke-static {v0, v7, v1}, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;->access$100(Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;Ljava/io/Closeable;Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$Reply;)V

    goto/16 :goto_0

    .line 589
    :catch_3
    move-exception v8

    .line 590
    .local v8, "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 594
    .end local v8    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v8

    .line 595
    .restart local v8    # "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 480
    check-cast p1, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$Reply;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$DumpDictTask;->onPostExecute(Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$Reply;)V

    return-void
.end method

.method protected onPostExecute(Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$Reply;)V
    .locals 3
    .param p1, "result"    # Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$Reply;

    .prologue
    .line 614
    iget-object v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$DumpDictTask;->this$0:Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;

    iget-object v1, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$DumpDictTask;->pd:Landroid/app/ProgressDialog;

    const v2, 0x7f080018

    # invokes: Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;->finishAndShowError(Landroid/app/ProgressDialog;Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$Reply;I)V
    invoke-static {v0, v1, p1, v2}, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;->access$200(Lorg/nyanya/android/traditionalt9/TraditionalT9Settings;Landroid/app/ProgressDialog;Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$Reply;I)V

    .line 615
    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 491
    iget-object v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$DumpDictTask;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 492
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 2
    .param p1, "progress"    # [Ljava/lang/Integer;

    .prologue
    .line 603
    iget-object v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$DumpDictTask;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 604
    iget-object v0, p0, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$DumpDictTask;->pd:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 606
    :cond_0
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 480
    check-cast p1, [Ljava/lang/Integer;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/nyanya/android/traditionalt9/TraditionalT9Settings$DumpDictTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
