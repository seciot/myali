.class public Lcom/alipay/android/lib/phone/SmsReader;
.super Ljava/lang/Object;


# instance fields
.field private a:Z

.field private b:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/lib/phone/SmsReader;->a:Z

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;ILcom/alipay/android/app/data/ValidatedFrameData;)Ljava/lang/String;
    .locals 20

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {p5 .. p5}, Lcom/alipay/android/app/data/ValidatedFrameData;->g()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/alipay/android/lib/phone/SmsReader;->b:J

    :try_start_0
    invoke-static/range {p3 .. p3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v10

    const-string/jumbo v2, "content://sms/inbox"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/16 v2, 0x8

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v5, "_id"

    aput-object v5, v4, v2

    const/4 v2, 0x1

    const-string/jumbo v5, "address"

    aput-object v5, v4, v2

    const/4 v2, 0x2

    const-string/jumbo v5, "person"

    aput-object v5, v4, v2

    const/4 v2, 0x3

    const-string/jumbo v5, "body"

    aput-object v5, v4, v2

    const/4 v2, 0x4

    const-string/jumbo v5, "date"

    aput-object v5, v4, v2

    const/4 v2, 0x5

    const-string/jumbo v5, "date_sent"

    aput-object v5, v4, v2

    const/4 v2, 0x6

    const-string/jumbo v5, "type"

    aput-object v5, v4, v2

    const/4 v2, 0x7

    const-string/jumbo v5, "protocol"

    aput-object v5, v4, v2

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "date desc limit 5"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_8

    const-string/jumbo v2, "address"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const-string/jumbo v2, "body"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    const-string/jumbo v2, "date"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    const-string/jumbo v2, "date_sent"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    const-string/jumbo v2, "type"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    const-string/jumbo v2, "protocol"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const/4 v2, 0x0

    :cond_0
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/alipay/android/lib/phone/SmsReader;->a:Z

    if-nez v4, :cond_3

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    invoke-interface {v3, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/alipay/android/lib/phone/SmsReader;->b:J

    move-wide/from16 v17, v0

    sub-long v4, v4, v17

    const-wide/16 v17, 0x0

    cmp-long v4, v4, v17

    if-lez v4, :cond_2

    const/4 v4, 0x0

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v17, v0

    const/4 v5, 0x0

    :goto_0
    move/from16 v0, v17

    if-ge v5, v0, :cond_1

    aget-object v18, p2, v5

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_5

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_5

    const/4 v4, 0x1

    :cond_1
    if-eqz v4, :cond_2

    const/4 v4, 0x1

    if-ne v15, v4, :cond_2

    if-nez v16, :cond_2

    invoke-virtual {v10, v14}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_2

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    :cond_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    if-nez v4, :cond_0

    :cond_3
    :goto_1
    if-eqz v3, :cond_4

    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_4
    :goto_2
    return-object v2

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    move-object v3, v9

    :goto_3
    :try_start_2
    invoke-static {}, Lcom/alipay/android/app/monitor/MonitorThread;->a()Lcom/alipay/android/app/monitor/MonitorThread;

    move-result-object v4

    const-string/jumbo v5, "can not read sms"

    invoke-virtual {v4, v2, v5}, Lcom/alipay/android/app/monitor/MonitorThread;->a(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v3, :cond_7

    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    move-object v2, v8

    goto :goto_2

    :catchall_0
    move-exception v2

    move-object v3, v9

    :goto_4
    if-eqz v3, :cond_6

    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v2

    :catchall_1
    move-exception v2

    goto :goto_4

    :catch_1
    move-exception v2

    goto :goto_3

    :cond_7
    move-object v2, v8

    goto :goto_2

    :cond_8
    move-object v2, v8

    goto :goto_1
.end method

.method public final a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/lib/phone/SmsReader;->a:Z

    return-void
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/lib/phone/SmsReader;->a:Z

    return-void
.end method

.method public final c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/lib/phone/SmsReader;->a:Z

    return v0
.end method
