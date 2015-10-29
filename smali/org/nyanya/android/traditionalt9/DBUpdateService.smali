.class public Lorg/nyanya/android/traditionalt9/DBUpdateService;
.super Landroid/app/IntentService;
.source "DBUpdateService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/nyanya/android/traditionalt9/DBUpdateService$DisplayToast;
    }
.end annotation


# static fields
.field private static final UPDATING_NOTIFICATION_ID:I = 0x9318ce


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    const-string v0, "DBUpdateService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 36
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lorg/nyanya/android/traditionalt9/DBUpdateService;->mHandler:Landroid/os/Handler;

    .line 37
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 12
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const v11, 0x7f08003f

    const v10, 0x7f08003d

    const/4 v9, 0x0

    .line 47
    invoke-static {p0}, Lorg/nyanya/android/traditionalt9/T9DB;->getInstance(Landroid/content/Context;)Lorg/nyanya/android/traditionalt9/T9DB;

    move-result-object v0

    .line 48
    .local v0, "dbhelper":Lorg/nyanya/android/traditionalt9/T9DB;
    invoke-static {p0}, Lorg/nyanya/android/traditionalt9/T9DB;->getSQLDB(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 70
    :goto_0
    return-void

    .line 51
    :cond_0
    const-string v5, "T9DBUpdate.onHandle"

    const-string v6, "Update pass check."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    new-instance v1, Landroid/app/Notification;

    const v5, 0x7f020006

    invoke-virtual {p0, v11}, Lorg/nyanya/android/traditionalt9/DBUpdateService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-direct {v1, v5, v6, v7, v8}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 55
    .local v1, "notification":Landroid/app/Notification;
    new-instance v2, Landroid/content/Intent;

    const-class v5, Lorg/nyanya/android/traditionalt9/DBUpdateService;

    invoke-direct {v2, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 56
    .local v2, "notificationIntent":Landroid/content/Intent;
    invoke-static {p0, v9, v2, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 57
    .local v3, "pendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {p0, v11}, Lorg/nyanya/android/traditionalt9/DBUpdateService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {p0, v10}, Lorg/nyanya/android/traditionalt9/DBUpdateService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v1, p0, v5, v6, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 59
    const v5, 0x9318ce

    invoke-virtual {p0, v5, v1}, Lorg/nyanya/android/traditionalt9/DBUpdateService;->startForeground(ILandroid/app/Notification;)V

    .line 64
    iget-object v5, p0, Lorg/nyanya/android/traditionalt9/DBUpdateService;->mHandler:Landroid/os/Handler;

    new-instance v6, Lorg/nyanya/android/traditionalt9/DBUpdateService$DisplayToast;

    invoke-virtual {p0, v10}, Lorg/nyanya/android/traditionalt9/DBUpdateService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-direct {v6, p0, p0, v7}, Lorg/nyanya/android/traditionalt9/DBUpdateService$DisplayToast;-><init>(Lorg/nyanya/android/traditionalt9/DBUpdateService;Landroid/content/Context;Ljava/lang/CharSequence;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 66
    invoke-virtual {v0}, Lorg/nyanya/android/traditionalt9/T9DB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 67
    .local v4, "tdb":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0, v4}, Lorg/nyanya/android/traditionalt9/T9DB;->setSQLDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 68
    iget-object v5, p0, Lorg/nyanya/android/traditionalt9/DBUpdateService;->mHandler:Landroid/os/Handler;

    new-instance v6, Lorg/nyanya/android/traditionalt9/DBUpdateService$DisplayToast;

    const v7, 0x7f08003e

    invoke-virtual {p0, v7}, Lorg/nyanya/android/traditionalt9/DBUpdateService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-direct {v6, p0, p0, v7}, Lorg/nyanya/android/traditionalt9/DBUpdateService$DisplayToast;-><init>(Lorg/nyanya/android/traditionalt9/DBUpdateService;Landroid/content/Context;Ljava/lang/CharSequence;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 69
    const-string v5, "T9DBUpdate.onHandle"

    const-string v6, "done."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
