.class public Lcom/alipay/mobile/security/securitycommon/OldDataTransferUtil;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/alipay/mobile/security/securitycommon/OldDataTransferUtil;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lcom/alipay/mobile/security/securitycommon/OldDataTransferUtil;
    .locals 2

    const-class v1, Lcom/alipay/mobile/security/securitycommon/OldDataTransferUtil;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/security/securitycommon/OldDataTransferUtil;->a:Lcom/alipay/mobile/security/securitycommon/OldDataTransferUtil;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/mobile/security/securitycommon/OldDataTransferUtil;

    invoke-direct {v0}, Lcom/alipay/mobile/security/securitycommon/OldDataTransferUtil;-><init>()V

    sput-object v0, Lcom/alipay/mobile/security/securitycommon/OldDataTransferUtil;->a:Lcom/alipay/mobile/security/securitycommon/OldDataTransferUtil;

    :cond_0
    sget-object v0, Lcom/alipay/mobile/security/securitycommon/OldDataTransferUtil;->a:Lcom/alipay/mobile/security/securitycommon/OldDataTransferUtil;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static b()Z
    .locals 9

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/CacheSet;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/utils/CacheSet;

    move-result-object v3

    const-string/jumbo v0, "isNeedOldDataToNewTable"

    invoke-virtual {v3, v0, v1}, Lcom/alipay/mobile/common/utils/CacheSet;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;

    move-result-object v4

    new-instance v5, Lcom/alipay/mobile/a/a/b;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/alipay/mobile/a/a/b;-><init>(Landroid/content/Context;)V

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/alipay/mobile/a/a/b;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v5}, Lcom/alipay/mobile/a/a/b;->a()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/a/a/c;

    const-string/jumbo v7, "taobao"

    iget-object v8, v0, Lcom/alipay/mobile/a/a/c;->c:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    new-instance v7, Lcom/alipay/mobile/framework/service/ext/security/bean/TaoBaoUserInfo;

    invoke-direct {v7}, Lcom/alipay/mobile/framework/service/ext/security/bean/TaoBaoUserInfo;-><init>()V

    iget-object v0, v0, Lcom/alipay/mobile/a/a/c;->a:Ljava/lang/String;

    invoke-virtual {v7, v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/TaoBaoUserInfo;->setTaoBaoUserId(Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->addTaobaoUserInfo(Lcom/alipay/mobile/framework/service/ext/security/bean/TaoBaoUserInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string/jumbo v0, "isNeedOldDataToNewTable"

    invoke-virtual {v3, v0, v2}, Lcom/alipay/mobile/common/utils/CacheSet;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v5}, Lcom/alipay/mobile/a/a/b;->b()V

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    const-string/jumbo v1, "RecentDB"

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    move v0, v2

    :goto_1
    return v0

    :cond_1
    :try_start_2
    const-string/jumbo v7, "alipay"

    iget-object v8, v0, Lcom/alipay/mobile/a/a/c;->c:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    new-instance v7, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-direct {v7}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;-><init>()V

    iget-object v8, v0, Lcom/alipay/mobile/a/a/c;->a:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->setLogonId(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/alipay/mobile/a/a/c;->d:Ljava/lang/String;

    invoke-virtual {v7, v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->setUserId(Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->addUserInfo(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string/jumbo v1, "isNeedOldDataToNewTable"

    invoke-virtual {v3, v1, v2}, Lcom/alipay/mobile/common/utils/CacheSet;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v5}, Lcom/alipay/mobile/a/a/b;->b()V

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    const-string/jumbo v2, "RecentDB"

    invoke-virtual {v1, v2}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    throw v0

    :cond_2
    const-string/jumbo v0, "isNeedOldDataToNewTable"

    invoke-virtual {v3, v0, v2}, Lcom/alipay/mobile/common/utils/CacheSet;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v5}, Lcom/alipay/mobile/a/a/b;->b()V

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    const-string/jumbo v2, "RecentDB"

    invoke-virtual {v0, v2}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    move v0, v1

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_1
.end method
