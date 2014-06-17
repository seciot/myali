.class public Lcom/alipay/mobile/framework/service/ext/dbhelper/ClientDataBaseHelper;
.super Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;


# static fields
.field public static final DATABASE_NAME:Ljava/lang/String; = "alipayclient.db"

.field public static final SCREATEKEY:Ljava/lang/String; = "userInfo"


# instance fields
.field private a:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/security/bean/DeviceInfoSecurity;",
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
            "Lcom/alipay/mobile/framework/service/ext/security/bean/SecurityLevel;",
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
            "Lcom/alipay/mobile/framework/service/ext/security/bean/TaoBaoUserInfo;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "alipayclient.db"

    const/16 v1, 0x8

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v2, p0, Lcom/alipay/mobile/framework/service/ext/dbhelper/ClientDataBaseHelper;->a:Lcom/j256/ormlite/dao/Dao;

    iput-object v2, p0, Lcom/alipay/mobile/framework/service/ext/dbhelper/ClientDataBaseHelper;->b:Lcom/j256/ormlite/dao/Dao;

    iput-object v2, p0, Lcom/alipay/mobile/framework/service/ext/dbhelper/ClientDataBaseHelper;->c:Lcom/j256/ormlite/dao/Dao;

    iput-object v2, p0, Lcom/alipay/mobile/framework/service/ext/dbhelper/ClientDataBaseHelper;->d:Lcom/j256/ormlite/dao/Dao;

    return-void
.end method

.method private a()V
    .locals 7

    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/ClientDataBaseHelper;->getTaoBaoUserInfoDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->queryForAll()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/bean/TaoBaoUserInfo;

    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->updateBuilder()Lcom/j256/ormlite/stmt/UpdateBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/TaoBaoUserInfo;->getUserId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "userId"

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/TaoBaoUserInfo;->getUserId()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "userInfo"

    invoke-static {v5, v6}, Lcom/alipay/mobile/common/security/Des;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/j256/ormlite/stmt/UpdateBuilder;->updateColumnValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/StatementBuilder;

    :cond_0
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/TaoBaoUserInfo;->getTaoBaoUserId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    const-string/jumbo v4, "taoBaoUserId"

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/TaoBaoUserInfo;->getTaoBaoUserId()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "userInfo"

    invoke-static {v5, v6}, Lcom/alipay/mobile/common/security/Des;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/j256/ormlite/stmt/UpdateBuilder;->updateColumnValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/StatementBuilder;

    :cond_1
    invoke-virtual {v3}, Lcom/j256/ormlite/stmt/UpdateBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    const-string/jumbo v5, "taoBaoUserId"

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/TaoBaoUserInfo;->getTaoBaoUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    invoke-virtual {v3}, Lcom/j256/ormlite/stmt/UpdateBuilder;->update()I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/database/SQLException;->printStackTrace()V

    :cond_2
    :goto_1
    return-void

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    goto :goto_1
.end method

.method private b()V
    .locals 7

    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/ClientDataBaseHelper;->getUserDataDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->queryForAll()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->updateBuilder()Lcom/j256/ormlite/stmt/UpdateBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "userId"

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "userInfo"

    invoke-static {v5, v6}, Lcom/alipay/mobile/common/security/Des;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/j256/ormlite/stmt/UpdateBuilder;->updateColumnValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/StatementBuilder;

    :cond_0
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    const-string/jumbo v4, "userName"

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "userInfo"

    invoke-static {v5, v6}, Lcom/alipay/mobile/common/security/Des;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/j256/ormlite/stmt/UpdateBuilder;->updateColumnValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/StatementBuilder;

    :cond_1
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getLogonId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    const-string/jumbo v4, "logonId"

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getLogonId()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "userInfo"

    invoke-static {v5, v6}, Lcom/alipay/mobile/common/security/Des;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/j256/ormlite/stmt/UpdateBuilder;->updateColumnValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/StatementBuilder;

    :cond_2
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getMobileNumber()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    const-string/jumbo v4, "mobileNumber"

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getMobileNumber()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "userInfo"

    invoke-static {v5, v6}, Lcom/alipay/mobile/common/security/Des;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/j256/ormlite/stmt/UpdateBuilder;->updateColumnValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/StatementBuilder;

    :cond_3
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserAvatar()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    const-string/jumbo v4, "userAvatar"

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserAvatar()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "userInfo"

    invoke-static {v5, v6}, Lcom/alipay/mobile/common/security/Des;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/j256/ormlite/stmt/UpdateBuilder;->updateColumnValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/StatementBuilder;

    :cond_4
    invoke-virtual {v3}, Lcom/j256/ormlite/stmt/UpdateBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    const-string/jumbo v5, "userId"

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    invoke-virtual {v3}, Lcom/j256/ormlite/stmt/UpdateBuilder;->update()I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/database/SQLException;->printStackTrace()V

    :cond_5
    :goto_1
    return-void

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    goto :goto_1
.end method

.method private c()V
    .locals 7

    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/ClientDataBaseHelper;->getUserDataDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->queryForAll()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->updateBuilder()Lcom/j256/ormlite/stmt/UpdateBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getGestureSkipStr()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "gestureSkipStr"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->isGestureSkip()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/alipay/mobile/security/gesture/util/GesutreContainUtil;->get8BytesStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/common/security/Des;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/j256/ormlite/stmt/UpdateBuilder;->updateColumnValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/StatementBuilder;

    :cond_0
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getGestureErrorNum()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    const-string/jumbo v4, "gestureErrorNum"

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getGestureErrorNum()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/alipay/mobile/security/gesture/util/GesutreContainUtil;->get8BytesStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/common/security/Des;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/j256/ormlite/stmt/UpdateBuilder;->updateColumnValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/StatementBuilder;

    :cond_1
    invoke-virtual {v3}, Lcom/j256/ormlite/stmt/UpdateBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    const-string/jumbo v5, "userId"

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    invoke-virtual {v3}, Lcom/j256/ormlite/stmt/UpdateBuilder;->update()I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/database/SQLException;->printStackTrace()V

    :cond_2
    :goto_1
    return-void

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->close()V

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/dbhelper/ClientDataBaseHelper;->a:Lcom/j256/ormlite/dao/Dao;

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/dbhelper/ClientDataBaseHelper;->b:Lcom/j256/ormlite/dao/Dao;

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/dbhelper/ClientDataBaseHelper;->c:Lcom/j256/ormlite/dao/Dao;

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/dbhelper/ClientDataBaseHelper;->d:Lcom/j256/ormlite/dao/Dao;

    return-void
.end method

.method public createNewTable(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/dbhelper/ClientDataBaseHelper;->connectionSource:Lcom/j256/ormlite/android/AndroidConnectionSource;

    invoke-static {v0, p1}, Lcom/j256/ormlite/table/TableUtils;->createTableIfNotExists(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/dbhelper/ClientDataBaseHelper;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\u521b\u5efa\u65b0\u8868\u5931\u8d25"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getDeviceInfoSecurityDataDao()Lcom/j256/ormlite/dao/Dao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/security/bean/DeviceInfoSecurity;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/dbhelper/ClientDataBaseHelper;->b:Lcom/j256/ormlite/dao/Dao;

    if-nez v0, :cond_0

    const-class v0, Lcom/alipay/mobile/framework/service/ext/security/bean/DeviceInfoSecurity;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/ClientDataBaseHelper;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/dbhelper/ClientDataBaseHelper;->b:Lcom/j256/ormlite/dao/Dao;

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/dbhelper/ClientDataBaseHelper;->b:Lcom/j256/ormlite/dao/Dao;

    return-object v0
.end method

.method public getSecurityLevelDao()Lcom/j256/ormlite/dao/Dao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/security/bean/SecurityLevel;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/dbhelper/ClientDataBaseHelper;->c:Lcom/j256/ormlite/dao/Dao;

    if-nez v0, :cond_0

    const-class v0, Lcom/alipay/mobile/framework/service/ext/security/bean/SecurityLevel;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/ClientDataBaseHelper;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/dbhelper/ClientDataBaseHelper;->c:Lcom/j256/ormlite/dao/Dao;

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/dbhelper/ClientDataBaseHelper;->c:Lcom/j256/ormlite/dao/Dao;

    return-object v0
.end method

.method public getTaoBaoUserInfoDao()Lcom/j256/ormlite/dao/Dao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/security/bean/TaoBaoUserInfo;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/dbhelper/ClientDataBaseHelper;->d:Lcom/j256/ormlite/dao/Dao;

    if-nez v0, :cond_0

    const-class v0, Lcom/alipay/mobile/framework/service/ext/security/bean/TaoBaoUserInfo;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/ClientDataBaseHelper;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/dbhelper/ClientDataBaseHelper;->d:Lcom/j256/ormlite/dao/Dao;

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/dbhelper/ClientDataBaseHelper;->d:Lcom/j256/ormlite/dao/Dao;

    return-object v0
.end method

.method public getUserDataDao()Lcom/j256/ormlite/dao/Dao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/dbhelper/ClientDataBaseHelper;->a:Lcom/j256/ormlite/dao/Dao;

    if-nez v0, :cond_0

    const-class v0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/ClientDataBaseHelper;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/dbhelper/ClientDataBaseHelper;->a:Lcom/j256/ormlite/dao/Dao;

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/dbhelper/ClientDataBaseHelper;->a:Lcom/j256/ormlite/dao/Dao;

    return-object v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;Lcom/j256/ormlite/support/ConnectionSource;)V
    .locals 3

    :try_start_0
    const-class v0, Lcom/alipay/mobile/framework/service/ext/dbhelper/ClientDataBaseHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/dbhelper/ClientDataBaseHelper;->connectionSource:Lcom/j256/ormlite/android/AndroidConnectionSource;

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-static {v0, v1}, Lcom/j256/ormlite/table/TableUtils;->createTableIfNotExists(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/dbhelper/ClientDataBaseHelper;->connectionSource:Lcom/j256/ormlite/android/AndroidConnectionSource;

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/bean/DeviceInfoSecurity;

    invoke-static {v0, v1}, Lcom/j256/ormlite/table/TableUtils;->createTableIfNotExists(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/dbhelper/ClientDataBaseHelper;->connectionSource:Lcom/j256/ormlite/android/AndroidConnectionSource;

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/bean/SecurityLevel;

    invoke-static {v0, v1}, Lcom/j256/ormlite/table/TableUtils;->createTableIfNotExists(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/dbhelper/ClientDataBaseHelper;->connectionSource:Lcom/j256/ormlite/android/AndroidConnectionSource;

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/bean/TaoBaoUserInfo;

    invoke-static {v0, v1}, Lcom/j256/ormlite/table/TableUtils;->createTableIfNotExists(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/dbhelper/ClientDataBaseHelper;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\u521b\u5efa\u6570\u636e\u5e93\u5931\u8d25"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->printStackTraceAndMore(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;Lcom/j256/ormlite/support/ConnectionSource;II)V
    .locals 8

    const/4 v2, 0x0

    const/16 v7, 0x8

    const/4 v6, 0x5

    if-eq p3, v7, :cond_9

    if-ne p4, v7, :cond_9

    const/4 v0, 0x2

    if-ge p3, v0, :cond_0

    const-class v0, Lcom/alipay/mobile/framework/service/ext/dbhelper/ClientDataBaseHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "\u6267\u884c\u6570\u636e\u5e93\u7248\u672c\u66f4\u65b0\u64cd\u4f5c"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "ALTER TABLE taobaouserinfo ADD COLUMN userId;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_0
    if-ge p3, v6, :cond_3

    const-string/jumbo v0, "ClientDataBaseHelper"

    const-string/jumbo v1, "\u4fee\u6539userinfo\u8868 \u589e\u52a0\u65e0\u7ebf\u57df\u8d26\u6237\u6807\u8bc6"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "ALTER TABLE userinfo ADD COLUMN isWirelessUser bool;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string/jumbo v0, "ALTER TABLE userinfo ADD COLUMN isBindCard bool;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string/jumbo v0, "ClientDataBaseHelper"

    const-string/jumbo v1, "\u8986\u76d6\u5b89\u88c5\u7684\u65f6\u5019\uff0c\u91cd\u5efa\u5173\u6ce8\u4fe1\u606f\u8868"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string/jumbo v0, "select avatar,followObjectId,followType,gmtFollowTime,latestMsg,latestMsgThridAccount, name,publicType,thirdPartyNo,unReadMsgCount,userId,latestMsg from followaccountinfo where top=1 limit 1"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    :try_start_2
    const-string/jumbo v0, "avatar"

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "followObjectId"

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "followType"

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "gmtFollowTime"

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v0, "latestMsg"

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "latestMsgThridAccount"

    const/4 v2, 0x5

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "msgNoteType"

    const-string/jumbo v2, "number"

    invoke-virtual {v3, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "name"

    const/4 v2, 0x6

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "publicType"

    const/4 v2, 0x7

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "top"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v0, "topOperateTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v0, "unReadMsgCount"

    const/16 v2, 0x9

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v0, "userId"

    const/16 v2, 0xa

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "latestMsg"

    const/16 v2, 0xb

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    move-object v2, v3

    :cond_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_0
    if-eqz v2, :cond_3

    :try_start_3
    const-string/jumbo v0, "followaccountinfo"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :cond_3
    :goto_1
    const/4 v0, 0x7

    if-ge p3, v0, :cond_4

    const-string/jumbo v0, "ALTER TABLE userinfo ADD COLUMN realNamed;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string/jumbo v0, "drop table thirdpartyinfoentry;"

    :try_start_4
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :goto_2
    if-lt p3, v6, :cond_4

    const-string/jumbo v0, "ALTER TABLE followaccountinfo ADD COLUMN wgtMsgId varchar(128);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string/jumbo v0, "ALTER TABLE followaccountinfo ADD COLUMN cltDefIconType varchar(64);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_4
    if-ge p3, v7, :cond_5

    const-string/jumbo v0, "ALTER TABLE userinfo ADD COLUMN gestureErrorNum;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string/jumbo v0, "ALTER TABLE userinfo ADD COLUMN gestureSkipStr;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/ClientDataBaseHelper;->c()V

    :cond_5
    const/4 v0, 0x3

    if-ge p3, v0, :cond_6

    const-class v0, Lcom/alipay/mobile/framework/service/ext/dbhelper/ClientDataBaseHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "\u66f4\u65b0\u6570\u636e\u5e93\u4e2d\u6570\u636e\uff0c\u5b57\u6bb5\u52a0\u5bc6\u5904\u7406"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/ClientDataBaseHelper;->b()V

    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/ClientDataBaseHelper;->a()V

    :cond_6
    const/4 v0, 0x4

    if-ge p3, v0, :cond_7

    const-string/jumbo v0, "ClientDataBaseHelper"

    const-string/jumbo v1, "\u5220\u9664\u539ftodo\u6570\u636e\u5e93"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_3
    return-void

    :catch_0
    move-exception v0

    move-object v1, v2

    :goto_4
    :try_start_5
    const-string/jumbo v3, "ClientDataBaseHelper"

    const-string/jumbo v4, "\u8986\u76d6\u5347\u7ea7\u7684\u65f6\u5019\uff0c\u67e5\u8be2\u539f\u7f6e\u9876\u4fe1\u606f\u5931\u8d25"

    invoke-static {v3, v4, v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_5
    if-eqz v1, :cond_8

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v0

    :catch_1
    move-exception v0

    const-string/jumbo v1, "ClientDataBaseHelper"

    const-string/jumbo v2, "\u8986\u76d6\u5347\u7ea7\u7684\u65f6\u5019\uff0c\u91cd\u7f6e\u539f\u7f6e\u9876\u4fe1\u606f\u5931\u8d25"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_2
    move-exception v0

    const-string/jumbo v1, "ClientDataBaseHelper"

    const-string/jumbo v2, "\u6267\u884c\u5220\u9664thirdpartyinfo\u6570\u636e\u5e93\u7684\u65f6\u5019\uff0c\u5931\u8d25"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_9
    const-class v0, Lcom/alipay/mobile/framework/service/ext/dbhelper/ClientDataBaseHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u4e0d\u6267\u884c\u6570\u636e\u5e93\u7248\u672c\u66f4\u65b0\u64cd\u4f5c\uff0coldVersion:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";newVersion:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_5

    :catch_3
    move-exception v0

    goto :goto_4

    :catch_4
    move-exception v0

    move-object v2, v3

    goto :goto_4
.end method
