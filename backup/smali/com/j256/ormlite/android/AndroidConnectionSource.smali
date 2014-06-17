.class public Lcom/j256/ormlite/android/AndroidConnectionSource;
.super Lcom/j256/ormlite/support/BaseConnectionSource;

# interfaces
.implements Lcom/j256/ormlite/support/ConnectionSource;


# static fields
.field private static final a:Lcom/j256/ormlite/logger/Logger;


# instance fields
.field private final b:Landroid/database/sqlite/SQLiteOpenHelper;

.field private final c:Landroid/database/sqlite/SQLiteDatabase;

.field private d:Lcom/j256/ormlite/android/AndroidDatabaseConnection;

.field private volatile e:Z

.field private final f:Lcom/j256/ormlite/db/DatabaseType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/j256/ormlite/android/AndroidConnectionSource;

    invoke-static {v0}, Lcom/j256/ormlite/logger/LoggerFactory;->getLogger(Ljava/lang/Class;)Lcom/j256/ormlite/logger/Logger;

    move-result-object v0

    sput-object v0, Lcom/j256/ormlite/android/AndroidConnectionSource;->a:Lcom/j256/ormlite/logger/Logger;

    return-void
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/j256/ormlite/support/BaseConnectionSource;-><init>()V

    iput-object v1, p0, Lcom/j256/ormlite/android/AndroidConnectionSource;->d:Lcom/j256/ormlite/android/AndroidDatabaseConnection;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/j256/ormlite/android/AndroidConnectionSource;->e:Z

    new-instance v0, Lcom/j256/ormlite/db/SqliteAndroidDatabaseType;

    invoke-direct {v0}, Lcom/j256/ormlite/db/SqliteAndroidDatabaseType;-><init>()V

    iput-object v0, p0, Lcom/j256/ormlite/android/AndroidConnectionSource;->f:Lcom/j256/ormlite/db/DatabaseType;

    iput-object v1, p0, Lcom/j256/ormlite/android/AndroidConnectionSource;->b:Landroid/database/sqlite/SQLiteOpenHelper;

    iput-object p1, p0, Lcom/j256/ormlite/android/AndroidConnectionSource;->c:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteOpenHelper;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/j256/ormlite/support/BaseConnectionSource;-><init>()V

    iput-object v1, p0, Lcom/j256/ormlite/android/AndroidConnectionSource;->d:Lcom/j256/ormlite/android/AndroidDatabaseConnection;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/j256/ormlite/android/AndroidConnectionSource;->e:Z

    new-instance v0, Lcom/j256/ormlite/db/SqliteAndroidDatabaseType;

    invoke-direct {v0}, Lcom/j256/ormlite/db/SqliteAndroidDatabaseType;-><init>()V

    iput-object v0, p0, Lcom/j256/ormlite/android/AndroidConnectionSource;->f:Lcom/j256/ormlite/db/DatabaseType;

    iput-object p1, p0, Lcom/j256/ormlite/android/AndroidConnectionSource;->b:Landroid/database/sqlite/SQLiteOpenHelper;

    iput-object v1, p0, Lcom/j256/ormlite/android/AndroidConnectionSource;->c:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method


# virtual methods
.method public clearSpecialConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V
    .locals 1

    sget-object v0, Lcom/j256/ormlite/android/AndroidConnectionSource;->a:Lcom/j256/ormlite/logger/Logger;

    invoke-virtual {p0, p1, v0}, Lcom/j256/ormlite/android/AndroidConnectionSource;->clearSpecial(Lcom/j256/ormlite/support/DatabaseConnection;Lcom/j256/ormlite/logger/Logger;)Z

    return-void
.end method

.method public close()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/j256/ormlite/android/AndroidConnectionSource;->e:Z

    return-void
.end method

.method public getDatabaseType()Lcom/j256/ormlite/db/DatabaseType;
    .locals 1

    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidConnectionSource;->f:Lcom/j256/ormlite/db/DatabaseType;

    return-object v0
.end method

.method public getReadOnlyConnection()Lcom/j256/ormlite/support/DatabaseConnection;
    .locals 1

    invoke-virtual {p0}, Lcom/j256/ormlite/android/AndroidConnectionSource;->getReadWriteConnection()Lcom/j256/ormlite/support/DatabaseConnection;

    move-result-object v0

    return-object v0
.end method

.method public getReadWriteConnection()Lcom/j256/ormlite/support/DatabaseConnection;
    .locals 5

    invoke-virtual {p0}, Lcom/j256/ormlite/android/AndroidConnectionSource;->getSavedConnection()Lcom/j256/ormlite/support/DatabaseConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidConnectionSource;->d:Lcom/j256/ormlite/android/AndroidDatabaseConnection;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidConnectionSource;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidConnectionSource;->b:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    new-instance v1, Lcom/j256/ormlite/android/AndroidDatabaseConnection;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/j256/ormlite/android/AndroidDatabaseConnection;-><init>(Landroid/database/sqlite/SQLiteDatabase;Z)V

    iput-object v1, p0, Lcom/j256/ormlite/android/AndroidConnectionSource;->d:Lcom/j256/ormlite/android/AndroidDatabaseConnection;

    sget-object v1, Lcom/j256/ormlite/android/AndroidConnectionSource;->a:Lcom/j256/ormlite/logger/Logger;

    const-string/jumbo v2, "created connection {} for db {}, helper {}"

    iget-object v3, p0, Lcom/j256/ormlite/android/AndroidConnectionSource;->d:Lcom/j256/ormlite/android/AndroidDatabaseConnection;

    iget-object v4, p0, Lcom/j256/ormlite/android/AndroidConnectionSource;->b:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/j256/ormlite/logger/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_2
    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidConnectionSource;->d:Lcom/j256/ormlite/android/AndroidDatabaseConnection;

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Getting a writable database from helper "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/j256/ormlite/android/AndroidConnectionSource;->b:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->create(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidConnectionSource;->c:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/j256/ormlite/android/AndroidConnectionSource;->a:Lcom/j256/ormlite/logger/Logger;

    const-string/jumbo v1, "{}: returning read-write connection {}, helper {}"

    iget-object v2, p0, Lcom/j256/ormlite/android/AndroidConnectionSource;->d:Lcom/j256/ormlite/android/AndroidDatabaseConnection;

    iget-object v3, p0, Lcom/j256/ormlite/android/AndroidConnectionSource;->b:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0, v1, p0, v2, v3}, Lcom/j256/ormlite/logger/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2
.end method

.method public isOpen()Z
    .locals 1

    iget-boolean v0, p0, Lcom/j256/ormlite/android/AndroidConnectionSource;->e:Z

    return v0
.end method

.method public releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V
    .locals 0

    return-void
.end method

.method public saveSpecialConnection(Lcom/j256/ormlite/support/DatabaseConnection;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/j256/ormlite/android/AndroidConnectionSource;->saveSpecial(Lcom/j256/ormlite/support/DatabaseConnection;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
