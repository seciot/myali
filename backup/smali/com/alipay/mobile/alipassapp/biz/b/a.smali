.class public Lcom/alipay/mobile/alipassapp/biz/b/a;
.super Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/alipay/mobile/alipassapp/biz/bean/AlipassListCache;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/alipay/mobile/alipassapp/biz/bean/AlipassDetailCache;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/alipay/mobile/alipassapp/biz/bean/AlipassListStatus;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/alipay/mobile/alipassapp/biz/bean/AlipassOffline;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/alipay/mobile/alipassapp/biz/bean/AlipassOfflineV2;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/alipay/mobile/alipassapp/biz/a/a;

.field private h:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/alipay/mobile/alipassapp/biz/b/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/alipassapp/biz/b/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/alipay/mobile/alipassapp/biz/a/a;)V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "alipayclient_alipass.db"

    const/4 v1, 0x5

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v2, p0, Lcom/alipay/mobile/alipassapp/biz/b/a;->b:Lcom/j256/ormlite/dao/Dao;

    iput-object v2, p0, Lcom/alipay/mobile/alipassapp/biz/b/a;->c:Lcom/j256/ormlite/dao/Dao;

    iput-object v2, p0, Lcom/alipay/mobile/alipassapp/biz/b/a;->d:Lcom/j256/ormlite/dao/Dao;

    iput-object v2, p0, Lcom/alipay/mobile/alipassapp/biz/b/a;->e:Lcom/j256/ormlite/dao/Dao;

    iput-object v2, p0, Lcom/alipay/mobile/alipassapp/biz/b/a;->f:Lcom/j256/ormlite/dao/Dao;

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/biz/b/a;->h:Landroid/content/Context;

    iput-object p2, p0, Lcom/alipay/mobile/alipassapp/biz/b/a;->g:Lcom/alipay/mobile/alipassapp/biz/a/a;

    return-void
.end method


# virtual methods
.method public final a()Lcom/j256/ormlite/dao/Dao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/alipay/mobile/alipassapp/biz/bean/AlipassListCache;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/b/a;->b:Lcom/j256/ormlite/dao/Dao;

    if-nez v0, :cond_0

    const-class v0, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassListCache;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/alipassapp/biz/b/a;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/b/a;->b:Lcom/j256/ormlite/dao/Dao;

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/b/a;->b:Lcom/j256/ormlite/dao/Dao;

    return-object v0
.end method

.method public final b()Lcom/j256/ormlite/dao/Dao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/alipay/mobile/alipassapp/biz/bean/AlipassDetailCache;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/b/a;->c:Lcom/j256/ormlite/dao/Dao;

    if-nez v0, :cond_0

    const-class v0, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassDetailCache;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/alipassapp/biz/b/a;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/b/a;->c:Lcom/j256/ormlite/dao/Dao;

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/b/a;->c:Lcom/j256/ormlite/dao/Dao;

    return-object v0
.end method

.method public final c()Lcom/j256/ormlite/dao/Dao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/alipay/mobile/alipassapp/biz/bean/AlipassListStatus;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/b/a;->d:Lcom/j256/ormlite/dao/Dao;

    if-nez v0, :cond_0

    const-class v0, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassListStatus;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/alipassapp/biz/b/a;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/b/a;->d:Lcom/j256/ormlite/dao/Dao;

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/b/a;->d:Lcom/j256/ormlite/dao/Dao;

    return-object v0
.end method

.method public close()V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->close()V

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/b/a;->b:Lcom/j256/ormlite/dao/Dao;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/b/a;->c:Lcom/j256/ormlite/dao/Dao;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/b/a;->d:Lcom/j256/ormlite/dao/Dao;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/b/a;->e:Lcom/j256/ormlite/dao/Dao;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/b/a;->f:Lcom/j256/ormlite/dao/Dao;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/b/a;->g:Lcom/alipay/mobile/alipassapp/biz/a/a;

    return-void
.end method

.method public final d()Lcom/j256/ormlite/dao/Dao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/alipay/mobile/alipassapp/biz/bean/AlipassOffline;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/b/a;->e:Lcom/j256/ormlite/dao/Dao;

    if-nez v0, :cond_0

    const-class v0, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassOffline;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/alipassapp/biz/b/a;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/b/a;->e:Lcom/j256/ormlite/dao/Dao;

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/b/a;->e:Lcom/j256/ormlite/dao/Dao;

    return-object v0
.end method

.method public final e()Lcom/j256/ormlite/dao/Dao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/alipay/mobile/alipassapp/biz/bean/AlipassOfflineV2;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/b/a;->f:Lcom/j256/ormlite/dao/Dao;

    if-nez v0, :cond_0

    const-class v0, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassOfflineV2;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/alipassapp/biz/b/a;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/b/a;->f:Lcom/j256/ormlite/dao/Dao;

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/b/a;->f:Lcom/j256/ormlite/dao/Dao;

    return-object v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;Lcom/j256/ormlite/support/ConnectionSource;)V
    .locals 2

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/alipassapp/biz/b/a;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/b/a;->connectionSource:Lcom/j256/ormlite/android/AndroidConnectionSource;

    const-class v1, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassListCache;

    invoke-static {v0, v1}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/b/a;->connectionSource:Lcom/j256/ormlite/android/AndroidConnectionSource;

    const-class v1, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassDetailCache;

    invoke-static {v0, v1}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/b/a;->connectionSource:Lcom/j256/ormlite/android/AndroidConnectionSource;

    const-class v1, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassListStatus;

    invoke-static {v0, v1}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/b/a;->connectionSource:Lcom/j256/ormlite/android/AndroidConnectionSource;

    const-class v1, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassOffline;

    invoke-static {v0, v1}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;Lcom/j256/ormlite/support/ConnectionSource;II)V
    .locals 7

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/b/a;->h:Landroid/content/Context;

    const-string/jumbo v1, "alipass_setting"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    if-eq p3, v3, :cond_0

    const/4 v0, 0x4

    if-eq p4, v0, :cond_0

    const/4 v0, 0x5

    if-ne p4, v0, :cond_2

    :cond_0
    :try_start_0
    const-class v0, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassListCache;

    const/4 v1, 0x1

    invoke-static {p2, v0, v1}, Lcom/j256/ormlite/table/TableUtils;->dropTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;Z)I

    const-class v0, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassDetailCache;

    const/4 v1, 0x1

    invoke-static {p2, v0, v1}, Lcom/j256/ormlite/table/TableUtils;->dropTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;Z)I

    const-class v0, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassListStatus;

    const/4 v1, 0x1

    invoke-static {p2, v0, v1}, Lcom/j256/ormlite/table/TableUtils;->dropTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;Z)I

    const-class v0, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassOfflineV2;

    const/4 v1, 0x1

    invoke-static {p2, v0, v1}, Lcom/j256/ormlite/table/TableUtils;->dropTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;Z)I

    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/alipassapp/biz/b/a;->onCreate(Landroid/database/sqlite/SQLiteDatabase;Lcom/j256/ormlite/support/ConnectionSource;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x2

    if-ne p3, v0, :cond_1

    const/4 v0, 0x3

    if-ne p4, v0, :cond_1

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/biz/b/a;->g:Lcom/alipay/mobile/alipassapp/biz/a/a;

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/biz/b/a;->h:Landroid/content/Context;

    const/4 v0, 0x0

    if-nez v1, :cond_3

    new-instance v1, Lcom/alipay/mobile/alipassapp/biz/a/a/a;

    invoke-direct {v1, v2}, Lcom/alipay/mobile/alipassapp/biz/a/a/a;-><init>(Landroid/content/Context;)V

    :cond_3
    :try_start_1
    invoke-interface {v1}, Lcom/alipay/mobile/alipassapp/biz/a/a;->b()Ljava/util/List;
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v0

    :goto_1
    :try_start_2
    const-class v2, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassListCache;

    const/4 v3, 0x1

    invoke-static {p2, v2, v3}, Lcom/j256/ormlite/table/TableUtils;->dropTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;Z)I

    const-class v2, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassOfflineV2;

    const/4 v3, 0x1

    invoke-static {p2, v2, v3}, Lcom/j256/ormlite/table/TableUtils;->dropTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;Z)I

    const-class v2, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassDetailCache;

    const/4 v3, 0x1

    invoke-static {p2, v2, v3}, Lcom/j256/ormlite/table/TableUtils;->dropTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;Z)I

    const-class v2, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassListStatus;

    const/4 v3, 0x1

    invoke-static {p2, v2, v3}, Lcom/j256/ormlite/table/TableUtils;->dropTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;Z)I

    const-class v2, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassListCache;

    invoke-static {p2, v2}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    const-class v2, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassOffline;

    invoke-static {p2, v2}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    const-class v2, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassDetailCache;

    invoke-static {p2, v2}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    const-class v2, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassListStatus;

    invoke-static {p2, v2}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    :goto_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassOfflineV2;

    new-instance v4, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassOffline;

    invoke-direct {v4}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassOffline;-><init>()V

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassOfflineV2;->getBizType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassOffline;->setBizType(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassOfflineV2;->getPartnerId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassOffline;->setPartnerId(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassOfflineV2;->getPassBaseInfo()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassOffline;->setPassBaseInfo(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassOfflineV2;->getRemotePassId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassOffline;->setPassId(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassOfflineV2;->getPassPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassOffline;->setPassPath(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassOfflineV2;->getSerialNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassOffline;->setSerialNumber(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassOfflineV2;->getStatus()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassOffline;->setStatus(I)V

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassOfflineV2;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassOffline;->setUserId(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassOffline;->setTimestamp(J)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    :try_start_3
    invoke-interface {v1, v2}, Lcom/alipay/mobile/alipassapp/biz/a/a;->a(Ljava/util/List;)V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_5

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_0

    :catch_1
    move-exception v2

    goto/16 :goto_1

    :catch_2
    move-exception v2

    goto/16 :goto_1

    :catch_3
    move-exception v2

    goto/16 :goto_1

    :catch_4
    move-exception v0

    goto/16 :goto_0

    :catch_5
    move-exception v0

    goto/16 :goto_0

    :catch_6
    move-exception v2

    goto :goto_2

    :catch_7
    move-exception v0

    goto/16 :goto_0
.end method
