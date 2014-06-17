.class public final Lcom/alipay/mobile/a/a/b;
.super Ljava/lang/Object;


# instance fields
.field a:Landroid/database/sqlite/SQLiteDatabase;

.field b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/mobile/a/a/b;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alipay/mobile/a/a/c;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/alipay/mobile/a/a/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "RecentTable2"

    const/16 v2, 0xb

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "ID"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "NAME"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "PASSWORD"

    aput-object v5, v2, v4

    const/4 v4, 0x3

    const-string/jumbo v5, "TYPE"

    aput-object v5, v2, v4

    const/4 v4, 0x4

    const-string/jumbo v5, "LOGINTIME"

    aput-object v5, v2, v4

    const/4 v4, 0x5

    const-string/jumbo v5, "USERID"

    aput-object v5, v2, v4

    const/4 v4, 0x6

    const-string/jumbo v5, "RSAPASSWORD"

    aput-object v5, v2, v4

    const/4 v4, 0x7

    const-string/jumbo v5, "RANDOMNUM"

    aput-object v5, v2, v4

    const/16 v4, 0x8

    const-string/jumbo v5, "REALNAME"

    aput-object v5, v2, v4

    const/16 v4, 0x9

    const-string/jumbo v5, "PHONENO"

    aput-object v5, v2, v4

    const/16 v4, 0xa

    const-string/jumbo v5, "USERAVTARPATH"

    aput-object v5, v2, v4

    const-string/jumbo v7, "ID desc"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-gez v1, :cond_0

    :goto_0
    return-object v3

    :cond_0
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/alipay/mobile/a/a/c;

    invoke-direct {v1}, Lcom/alipay/mobile/a/a/c;-><init>()V

    const-string/jumbo v2, "NAME"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/mobile/a/a/c;->a:Ljava/lang/String;

    const-string/jumbo v2, "PASSWORD"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/mobile/a/a/c;->b:Ljava/lang/String;

    const-string/jumbo v2, "TYPE"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/mobile/a/a/c;->c:Ljava/lang/String;

    const-string/jumbo v2, "USERID"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/mobile/a/a/c;->d:Ljava/lang/String;

    const-string/jumbo v2, "RSAPASSWORD"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/mobile/a/a/c;->e:Ljava/lang/String;

    const-string/jumbo v2, "RANDOMNUM"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/mobile/a/a/c;->f:Ljava/lang/String;

    const-string/jumbo v2, "REALNAME"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/mobile/a/a/c;->g:Ljava/lang/String;

    const-string/jumbo v2, "PHONENO"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/mobile/a/a/c;->h:Ljava/lang/String;

    const-string/jumbo v2, "USERAVTARPATH"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/mobile/a/a/c;->i:Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v3, v8

    goto/16 :goto_0
.end method

.method public final a(Landroid/content/Context;)Z
    .locals 11

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v2, 0x0

    const/4 v10, -0x1

    iget-object v0, p0, Lcom/alipay/mobile/a/a/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/a/a/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    const-string/jumbo v0, "RecentDB"

    invoke-virtual {p1, v0, v9, v2}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/a/a/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v0, p0, Lcom/alipay/mobile/a/a/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "RecentTable2"

    const-string/jumbo v7, "ID desc"

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const-string/jumbo v1, "USERID"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v10, :cond_1

    const-string/jumbo v1, "RSAPASSWORD"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v10, :cond_1

    const-string/jumbo v1, "RANDOMNUM"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v10, :cond_1

    const-string/jumbo v1, "REALNAME"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v10, :cond_1

    const-string/jumbo v1, "PHONENO"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v10, :cond_1

    const-string/jumbo v1, "USERAVTARPATH"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v10, :cond_2

    :cond_1
    move v0, v9

    :goto_0
    return v0

    :cond_2
    move v0, v8

    goto :goto_0

    :cond_3
    move v0, v8

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/a/a/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/a/a/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/a/a/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
