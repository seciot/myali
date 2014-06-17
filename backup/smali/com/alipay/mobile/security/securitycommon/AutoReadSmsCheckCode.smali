.class public Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Z

.field private c:Z

.field private d:J

.field private e:J

.field private f:Lcom/alipay/mobile/framework/service/ext/security/AutoReadSmsCheckCodeCallBack;

.field private g:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/framework/app/ActivityApplication;Lcom/alipay/mobile/framework/service/ext/security/AutoReadSmsCheckCodeCallBack;)V
    .locals 4

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;->e:J

    iput-wide v2, p0, Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;->g:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;->b:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;->c:Z

    iput-object p2, p0, Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;->f:Lcom/alipay/mobile/framework/service/ext/security/AutoReadSmsCheckCodeCallBack;

    iput-wide v2, p0, Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;->g:J

    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/security/QihooGuardService;->isQihooGuardOpened()Z

    return-void
.end method

.method private a(Landroid/content/Context;)J
    .locals 7

    const/4 v6, 0x0

    :try_start_0
    const-string/jumbo v0, "content://sms/inbox"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v3, "_id"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string/jumbo v3, "date"

    aput-object v3, v2, v0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string/jumbo v5, "date desc limit 1"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "date"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v1, "_id"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;->g:J

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-nez v3, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v0

    :cond_0
    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_0
    return-wide v0

    :cond_2
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-wide v0

    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v2, v6

    :goto_1
    :try_start_3
    sget-object v1, Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "can not read sms"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-wide v0

    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v6

    :goto_2
    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private a(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 23

    const/4 v8, 0x0

    const/4 v9, 0x0

    :try_start_0
    invoke-static/range {p3 .. p3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v10

    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/security/QihooGuardService;->readQihooSMS()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    if-eqz v8, :cond_1

    move-object v2, v8

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    :try_start_1
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

    const-string/jumbo v5, "type"

    aput-object v5, v4, v2

    const/4 v2, 0x6

    const-string/jumbo v5, "protocol"

    aput-object v5, v4, v2

    const/4 v2, 0x7

    const-string/jumbo v5, "read"

    aput-object v5, v4, v2

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "address=95188"

    const/4 v6, 0x0

    const-string/jumbo v7, "date desc limit 5"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_9

    const-string/jumbo v2, "address"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const-string/jumbo v2, "_id"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    const-string/jumbo v2, "body"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    const-string/jumbo v2, "date"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    const-string/jumbo v2, "type"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const-string/jumbo v2, "protocol"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    const/4 v2, 0x0

    :cond_2
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;->b:Z

    if-nez v4, :cond_4

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-interface {v3, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    invoke-interface {v3, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    sget-object v18, Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;->a:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    const-string/jumbo v20, "address:"

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v18, Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;->a:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    const-string/jumbo v20, "body:"

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;->d:J

    move-wide/from16 v18, v0

    sub-long v18, v4, v18

    sget-object v20, Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;->a:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    const-string/jumbo v22, "date:"

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-static {v0, v4}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v20, "mBaseTime:"

    move-object/from16 v0, v20

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;->d:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v20, "ts=date - mBaseTime:"

    move-object/from16 v0, v20

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, v18

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    sget-object v5, Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;->a:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    const-string/jumbo v19, "smsId:"

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v5, v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;->g:J

    move-wide/from16 v18, v0

    cmp-long v4, v4, v18

    if-gtz v4, :cond_5

    sget-object v4, Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "mLastSmsId:"

    invoke-direct {v5, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;->g:J

    invoke-virtual {v5, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v4

    if-nez v4, :cond_2

    :cond_4
    :goto_2
    if-eqz v3, :cond_0

    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :cond_5
    const/4 v4, 0x0

    :try_start_3
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v18, v0

    const/4 v5, 0x0

    :goto_3
    move/from16 v0, v18

    if-ge v5, v0, :cond_6

    aget-object v19, p2, v5

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_7

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_7

    const/4 v4, 0x1

    :cond_6
    if-eqz v4, :cond_3

    const/4 v4, 0x1

    move/from16 v0, v16

    if-ne v0, v4, :cond_3

    if-nez v17, :cond_3

    invoke-virtual {v10, v15}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_3

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v2

    goto :goto_1

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :catch_0
    move-exception v2

    move-object v3, v2

    move-object v4, v9

    move-object v2, v8

    :goto_4
    :try_start_4
    sget-object v5, Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "can not read sms"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v4, :cond_0

    invoke-interface {v4}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    move-object v3, v9

    :goto_5
    if-eqz v3, :cond_8

    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_8

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v2

    :catchall_1
    move-exception v2

    goto :goto_5

    :catchall_2
    move-exception v2

    move-object v3, v4

    goto :goto_5

    :catch_1
    move-exception v2

    move-object v3, v2

    move-object v4, v9

    move-object v2, v8

    goto :goto_4

    :catch_2
    move-exception v2

    move-object v4, v3

    move-object v3, v2

    move-object v2, v8

    goto :goto_4

    :cond_9
    move-object v2, v8

    goto/16 :goto_2
.end method

.method static synthetic access$002(Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;J)J
    .locals 0

    iput-wide p1, p0, Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;->e:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;Landroid/content/Context;)J
    .locals 2

    invoke-direct {p0, p1}, Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;->a(Landroid/content/Context;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$200(Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/content/Context;JJ)V
    .locals 5

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :goto_0
    iget-boolean v3, p0, Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;->b:Z

    if-nez v3, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, p6

    cmp-long v3, v3, p8

    if-gez v3, :cond_2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    const-wide/16 v2, 0x9c4

    sub-long v0, v2, v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, p5, p1, p2, p3}, Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;->a(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;->a:Ljava/lang/String;

    const-string/jumbo v4, "read sms value is empty"

    invoke-static {v3, v4}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;->f:Lcom/alipay/mobile/framework/service/ext/security/AutoReadSmsCheckCodeCallBack;

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/service/ext/security/AutoReadSmsCheckCodeCallBack;->OnAutoReadSms(Ljava/lang/String;)V

    sget-object v0, Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "sms is:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method static synthetic access$302(Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;->c:Z

    return p1
.end method

.method static synthetic access$402(Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;->b:Z

    return p1
.end method

.method static synthetic access$502(Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;J)J
    .locals 0

    iput-wide p1, p0, Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;->g:J

    return-wide p1
.end method


# virtual methods
.method public dispose()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;->b:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;->c:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;->g:J

    return-void
.end method

.method public varargs readsms(Ljava/lang/String;ILjava/lang/Long;ILjava/lang/String;[Ljava/lang/String;)V
    .locals 7

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;->d:J

    iget-boolean v0, p0, Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;->c:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;->c:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;->b:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;->g:J

    new-instance v0, Lcom/alipay/mobile/security/securitycommon/a;

    move-object v1, p0

    move v2, p4

    move-object v3, p6

    move-object v4, p1

    move v5, p2

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/alipay/mobile/security/securitycommon/a;-><init>(Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;I[Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
