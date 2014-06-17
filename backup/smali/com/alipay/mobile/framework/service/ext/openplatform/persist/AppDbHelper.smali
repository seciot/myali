.class public Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;
.super Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;
.source "AppDbHelper.java"


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "open_platform_apps.db"

.field private static final DATABASE_VERSION:I = 0x5

.field private static final TAG:Ljava/lang/String; = "AppDbHelper"

.field private static instance:Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;


# instance fields
.field private appEntityDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private fastLoginAppEntityDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/domain/FastLoginAppEntity;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private myAppEntityDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/domain/MyAppEntity;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 47
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    const-string/jumbo v1, "open_platform_apps.db"

    const/4 v2, 0x0

    const/4 v3, 0x5

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 49
    return-void
.end method

.method public static getDbHelper()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;->instance:Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;-><init>()V

    sput-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;->instance:Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;

    .line 43
    :cond_0
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;->instance:Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 158
    invoke-super {p0}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->close()V

    .line 159
    sput-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;->instance:Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;

    .line 160
    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;->appEntityDao:Lcom/j256/ormlite/dao/Dao;

    .line 161
    return-void
.end method

.method public getAppEntityDao()Lcom/j256/ormlite/dao/Dao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 122
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;->appEntityDao:Lcom/j256/ormlite/dao/Dao;

    if-nez v0, :cond_0

    .line 123
    const-class v0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;->appEntityDao:Lcom/j256/ormlite/dao/Dao;

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;->appEntityDao:Lcom/j256/ormlite/dao/Dao;

    return-object v0
.end method

.method public getFastLoginAppEntityDao()Lcom/j256/ormlite/dao/Dao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/domain/FastLoginAppEntity;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 147
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;->fastLoginAppEntityDao:Lcom/j256/ormlite/dao/Dao;

    if-nez v0, :cond_0

    .line 148
    const-class v0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/FastLoginAppEntity;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;->fastLoginAppEntityDao:Lcom/j256/ormlite/dao/Dao;

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;->fastLoginAppEntityDao:Lcom/j256/ormlite/dao/Dao;

    return-object v0
.end method

.method public getMyAppEntityDao()Lcom/j256/ormlite/dao/Dao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/domain/MyAppEntity;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;->myAppEntityDao:Lcom/j256/ormlite/dao/Dao;

    if-nez v0, :cond_0

    .line 135
    const-class v0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/MyAppEntity;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;->myAppEntityDao:Lcom/j256/ormlite/dao/Dao;

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;->myAppEntityDao:Lcom/j256/ormlite/dao/Dao;

    return-object v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;Lcom/j256/ormlite/support/ConnectionSource;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 59
    :try_start_0
    const-class v0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    invoke-static {p2, v0}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 60
    const-class v0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/MyAppEntity;

    invoke-static {p2, v0}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 61
    const-class v0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/FastLoginAppEntity;

    invoke-static {p2, v0}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    return-void

    .line 62
    :catch_0
    move-exception v0

    .line 63
    const-class v1, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Can\'t create database"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;Lcom/j256/ormlite/support/ConnectionSource;II)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 79
    const/4 v0, 0x4

    if-gt p3, v0, :cond_0

    .line 81
    :try_start_0
    const-string/jumbo v0, "DROP TABLE AppEntity;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :goto_0
    :try_start_1
    const-string/jumbo v0, "DROP TABLE MyAppEntity;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 91
    :goto_1
    :try_start_2
    const-string/jumbo v0, "DROP TABLE FastLoginAppEntity;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 96
    :goto_2
    :try_start_3
    const-string/jumbo v0, "DROP TABLE HomeAppEntity;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 101
    :goto_3
    :try_start_4
    const-class v0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    invoke-static {p2, v0}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 102
    const-class v0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/MyAppEntity;

    invoke-static {p2, v0}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 103
    const-class v0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/FastLoginAppEntity;

    invoke-static {p2, v0}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_4

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "upgrade db from version "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " to version "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " success"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    :cond_0
    return-void

    .line 83
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "drop db table AppEntity ErrorOldVersion ="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    .line 88
    :catch_1
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "drop db table MyAppEntity ErrorOldVersion ="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_1

    .line 93
    :catch_2
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "drop db table FastLoginAppEntity ErrorOldVersion ="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_2

    .line 98
    :catch_3
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "drop db table HomeAppEntity ErrorOldVersion ="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_3

    .line 105
    :catch_4
    move-exception v0

    .line 106
    const-class v1, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Can\'t create database"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
