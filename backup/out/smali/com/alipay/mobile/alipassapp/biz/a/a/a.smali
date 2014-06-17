.class public Lcom/alipay/mobile/alipassapp/biz/a/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/alipassapp/biz/a/a;


# static fields
.field private static final a:Ljava/lang/String;

.field private static final j:Ljava/lang/Object;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/alipay/mobile/framework/app/ActivityApplication;

.field private d:Lcom/alipay/mobile/alipassapp/biz/b/a;

.field private e:Lcom/j256/ormlite/dao/Dao;
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

.field private f:Lcom/j256/ormlite/dao/Dao;
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

.field private g:Lcom/j256/ormlite/dao/Dao;
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

.field private h:Lcom/j256/ormlite/dao/Dao;
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

.field private i:Lcom/j256/ormlite/dao/Dao;
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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/alipay/mobile/alipassapp/biz/a/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->j:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->b:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/framework/app/ActivityApplication;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->b:Landroid/content/Context;

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->c:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-void
.end method

.method private static a(Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;->isDebug(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->a:Ljava/lang/String;

    const-class v0, Lcom/alipay/kabaoprod/core/model/model/PassInfo;

    invoke-static {p1, v0}, Lcom/alipay/mobile/alipassapp/biz/common/b;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/kabaoprod/core/model/model/PassInfo;

    invoke-virtual {p0, v0}, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;->setPassInfo(Lcom/alipay/kabaoprod/core/model/model/PassInfo;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/alipay/mobilesecurity/taobao/sso/util/TaobaoSecurityEncryptor;->decrypt(Landroid/content/ContextWrapper;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/alipay/kabaoprod/core/model/model/PassInfo;

    invoke-static {v0, v1}, Lcom/alipay/mobile/alipassapp/biz/common/b;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/kabaoprod/core/model/model/PassInfo;

    invoke-virtual {p0, v0}, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;->setPassInfo(Lcom/alipay/kabaoprod/core/model/model/PassInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static a(Lcom/alipay/mobile/alipassapp/biz/bean/AlipassDetailCache;Lcom/alipay/kabaoprod/core/model/model/PassInfo;)V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;->isDebug(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->a:Ljava/lang/String;

    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassDetailCache;->setPassInfo(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobilesecurity/taobao/sso/util/TaobaoSecurityEncryptor;->encrypt(Landroid/content/ContextWrapper;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassDetailCache;->setPassInfo(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static b(Lcom/alipay/mobile/alipassapp/biz/bean/AlipassOffline;)V
    .locals 5

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassOffline;->getPassPath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassOffline;->getPassPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/FileUtils;->delFiles(Ljava/io/File;)V

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassOffline;->getPassPath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassOffline;->getPassPath()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/FileUtils;->delFiles(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    goto :goto_0
.end method

.method private f()Lcom/alipay/mobile/alipassapp/biz/b/a;
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->d:Lcom/alipay/mobile/alipassapp/biz/b/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/mobile/alipassapp/biz/b/a;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->b:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/alipay/mobile/alipassapp/biz/b/a;-><init>(Landroid/content/Context;Lcom/alipay/mobile/alipassapp/biz/a/a;)V

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->d:Lcom/alipay/mobile/alipassapp/biz/b/a;

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->d:Lcom/alipay/mobile/alipassapp/biz/b/a;

    return-object v0
.end method

.method private g()Lcom/j256/ormlite/dao/Dao;
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

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->e:Lcom/j256/ormlite/dao/Dao;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->f()Lcom/alipay/mobile/alipassapp/biz/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/b/a;->a()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->e:Lcom/j256/ormlite/dao/Dao;

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->e:Lcom/j256/ormlite/dao/Dao;

    return-object v0
.end method

.method private h()Lcom/j256/ormlite/dao/Dao;
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

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->f:Lcom/j256/ormlite/dao/Dao;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->f()Lcom/alipay/mobile/alipassapp/biz/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/b/a;->b()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->f:Lcom/j256/ormlite/dao/Dao;

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->f:Lcom/j256/ormlite/dao/Dao;

    return-object v0
.end method

.method private i()Lcom/j256/ormlite/dao/Dao;
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

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->g:Lcom/j256/ormlite/dao/Dao;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->f()Lcom/alipay/mobile/alipassapp/biz/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/b/a;->c()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->g:Lcom/j256/ormlite/dao/Dao;

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->g:Lcom/j256/ormlite/dao/Dao;

    return-object v0
.end method

.method private j()Lcom/j256/ormlite/dao/Dao;
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

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->h:Lcom/j256/ormlite/dao/Dao;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->f()Lcom/alipay/mobile/alipassapp/biz/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/b/a;->d()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->h:Lcom/j256/ormlite/dao/Dao;

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->h:Lcom/j256/ormlite/dao/Dao;

    return-object v0
.end method

.method private k()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->c:Lcom/alipay/mobile/framework/app/ActivityApplication;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->c:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v1

    if-nez v1, :cond_2

    :cond_0
    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_1
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;
    .locals 7

    sget-object v2, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->j:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->a:Ljava/lang/String;

    new-instance v1, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;

    invoke-direct {v1}, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;->success:Z

    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->k()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    sget-object v0, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->a:Ljava/lang/String;

    monitor-exit v2

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->h()Lcom/j256/ormlite/dao/Dao;

    move-result-object v3

    invoke-interface {v3}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    const-string/jumbo v4, "userId"

    invoke-virtual {v3, v4, v0}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const-string/jumbo v3, "passId"

    invoke-virtual {v0, v3, p1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v0

    sget-object v3, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "cache detail size is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassDetailCache;

    sget-object v3, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassDetailCache;->toString()Ljava/lang/String;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassDetailCache;->getGmtModified()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassDetailCache;->getGmtModified()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassDetailCache;->getGmtModified()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v5

    cmp-long v3, v3, v5

    if-ltz v3, :cond_2

    :try_start_1
    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassDetailCache;->getPassInfo()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->a(Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;Ljava/lang/String;)V

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;->success:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    :try_start_2
    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassDetailCache;->getBizType()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassDetailCache;->getBizType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    :cond_2
    sget-object v0, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->a:Ljava/lang/String;

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;
    .locals 4

    const/4 v0, 0x0

    sget-object v2, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->j:Ljava/lang/Object;

    monitor-enter v2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->a:Ljava/lang/String;

    monitor-exit v2

    :goto_0
    return-object v0

    :cond_1
    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->h()Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const-string/jumbo v3, "customerId"

    invoke-virtual {v1, v3, p1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const-string/jumbo v3, "userId"

    invoke-virtual {v1, v3, p2}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const-string/jumbo v3, "bizType"

    invoke-virtual {v1, v3, p3}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    new-instance v1, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;

    invoke-direct {v1}, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;-><init>()V

    const/4 v0, 0x0

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassDetailCache;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassDetailCache;->getPassInfo()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->a(Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;->success:Z

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    goto :goto_0

    :cond_2
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public final a(Ljava/lang/String;)Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;
    .locals 13

    const/4 v3, 0x1

    const/4 v4, 0x0

    sget-object v5, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->j:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->a:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    new-instance v2, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;

    invoke-direct {v2}, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;-><init>()V

    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->k()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    sget-object v0, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, v2, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;->success:Z

    monitor-exit v5

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->g()Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const-string/jumbo v10, "userId"

    invoke-virtual {v1, v10, v0}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const-string/jumbo v10, "bizType"

    invoke-virtual {v1, v10, p1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const-string/jumbo v10, "status"

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v1

    sget-object v10, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->a:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "cache list size is "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ",userId="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ",bizType="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    sget-object v10, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->a:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "queryBuilderTime is "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long v8, v11, v8

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->i()Lcom/j256/ormlite/dao/Dao;

    move-result-object v10

    invoke-interface {v10}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v10

    invoke-virtual {v10}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v10

    const-string/jumbo v11, "userId"

    invoke-virtual {v10, v11, v0}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const-string/jumbo v10, "bizType"

    invoke-virtual {v0, v10, p1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_3

    const/4 v10, 0x0

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassListStatus;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassListStatus;->getHasPast()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;->setHasPast(I)V

    sget-object v0, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "hasPast value is "

    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;->getHasPast()I

    move-result v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :goto_1
    sget-object v0, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "listStatusQueryBuilderTime is "

    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v8, v10, v8

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v10

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassListCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassListCache;->getDate()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v10, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassListCache;->getDate()Ljava/lang/String;

    move-result-object v1

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v10, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassListCache;->getDate()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v10, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassListCache;->getPassBaseInfo()Ljava/lang/String;

    move-result-object v0

    const-class v12, Lcom/alipay/kabaoprod/core/model/model/PassBaseInfo;

    invoke-static {v0, v12}, Lcom/alipay/mobile/alipassapp/biz/common/b;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {v2, v0}, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;->setHasPast(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v5

    throw v0

    :cond_4
    :try_start_3
    sget-object v0, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "fasejsonTime is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long v8, v11, v8

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v10}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v12, Lcom/alipay/kabaoprod/core/model/model/PassTimelineInfo;

    invoke-direct {v12}, Lcom/alipay/kabaoprod/core/model/model/PassTimelineInfo;-><init>()V

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v12, v0}, Lcom/alipay/kabaoprod/core/model/model/PassTimelineInfo;->setPassDate(Ljava/lang/String;)V

    invoke-virtual {v12}, Lcom/alipay/kabaoprod/core/model/model/PassTimelineInfo;->getPassDate()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v12, v0}, Lcom/alipay/kabaoprod/core/model/model/PassTimelineInfo;->setPassList(Ljava/util/List;)V

    invoke-interface {v1, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    invoke-virtual {v2, v1}, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;->setPassTimelineList(Ljava/util/List;)V

    invoke-virtual {v2}, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;->getPassTimelineList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_6

    move v0, v3

    :goto_4
    iput-boolean v0, v2, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;->success:Z

    invoke-virtual {v2}, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;->getPassTimelineList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_7

    move v0, v3

    :goto_5
    invoke-virtual {v2, v0}, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;->setHasCurrent(I)V

    sget-object v0, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "passTimelineListTime is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v8

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    sget-object v0, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "queryCacheList finish!!!!! total time is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v6

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v0, v2

    goto/16 :goto_0

    :cond_6
    move v0, v4

    goto :goto_4

    :cond_7
    move v0, v4

    goto :goto_5
.end method

.method public final a(Ljava/lang/String;J)Lcom/alipay/mobile/alipassapp/biz/bean/AlipassOffline;
    .locals 5

    const/4 v0, 0x0

    sget-object v1, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->j:Ljava/lang/Object;

    monitor-enter v1

    if-nez p1, :cond_0

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->j()Lcom/j256/ormlite/dao/Dao;

    move-result-object v2

    invoke-interface {v2}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v2

    const-string/jumbo v3, "timestamp"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/j256/ormlite/stmt/QueryBuilder;->orderBy(Ljava/lang/String;Z)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v2

    const-wide/16 v3, 0x1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/j256/ormlite/stmt/QueryBuilder;->limit(Ljava/lang/Long;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    const-string/jumbo v3, "userId"

    invoke-virtual {v2, v3, p1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    const-string/jumbo v3, "status"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    const-string/jumbo v3, "timestamp"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/j256/ormlite/stmt/Where;->lt(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    const/4 v0, 0x0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassOffline;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    monitor-exit v1

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;ILjava/lang/Class;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    sget-object v1, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->j:Ljava/lang/Object;

    monitor-enter v1

    if-nez p1, :cond_0

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    const-class v2, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassListCache;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->g()Lcom/j256/ormlite/dao/Dao;

    move-result-object v2

    invoke-interface {v2}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v2

    const-string/jumbo v3, "id"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/j256/ormlite/stmt/QueryBuilder;->orderBy(Ljava/lang/String;Z)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v2

    const-wide/16 v3, 0x1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/j256/ormlite/stmt/QueryBuilder;->limit(Ljava/lang/Long;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    const-string/jumbo v3, "userId"

    invoke-virtual {v2, v3, p1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    const-string/jumbo v3, "status"

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    const-string/jumbo v3, "id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/j256/ormlite/stmt/Where;->gt(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    const/4 v0, 0x0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    :try_start_1
    const-class v2, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassOffline;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->j()Lcom/j256/ormlite/dao/Dao;

    move-result-object v2

    invoke-interface {v2}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v2

    const-string/jumbo v3, "id"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/j256/ormlite/stmt/QueryBuilder;->orderBy(Ljava/lang/String;Z)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v2

    const-wide/16 v3, 0x1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/j256/ormlite/stmt/QueryBuilder;->limit(Ljava/lang/Long;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    const-string/jumbo v3, "userId"

    invoke-virtual {v2, v3, p1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    const-string/jumbo v3, "status"

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    const-string/jumbo v3, "id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/j256/ormlite/stmt/Where;->gt(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    const/4 v0, 0x0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :cond_2
    monitor-exit v1

    goto/16 :goto_0
.end method

.method public final a()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->d:Lcom/alipay/mobile/alipassapp/biz/b/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->d:Lcom/alipay/mobile/alipassapp/biz/b/a;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/b/a;->close()V

    iput-object v1, p0, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->d:Lcom/alipay/mobile/alipassapp/biz/b/a;

    :cond_0
    iput-object v1, p0, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->e:Lcom/j256/ormlite/dao/Dao;

    iput-object v1, p0, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->f:Lcom/j256/ormlite/dao/Dao;

    iput-object v1, p0, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->g:Lcom/j256/ormlite/dao/Dao;

    iput-object v1, p0, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->h:Lcom/j256/ormlite/dao/Dao;

    iput-object v1, p0, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->i:Lcom/j256/ormlite/dao/Dao;

    return-void
.end method

.method public final a(Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;Ljava/lang/String;I)V
    .locals 7

    sget-object v1, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->j:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->a:Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;->getPassInfo()Lcom/alipay/kabaoprod/core/model/model/PassInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;->getPassInfo()Lcom/alipay/kabaoprod/core/model/model/PassInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/kabaoprod/core/model/model/PassInfo;->getPassBaseInfo()Lcom/alipay/kabaoprod/core/model/model/PassBaseInfo;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->a:Ljava/lang/String;

    monitor-exit v1

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;->getPassInfo()Lcom/alipay/kabaoprod/core/model/model/PassInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/kabaoprod/core/model/model/PassInfo;->getPassBaseInfo()Lcom/alipay/kabaoprod/core/model/model/PassBaseInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/kabaoprod/core/model/model/PassBaseInfo;->passId:Ljava/lang/String;

    if-eqz v0, :cond_2

    if-nez v2, :cond_3

    :cond_2
    sget-object v0, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->a:Ljava/lang/String;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_3
    :try_start_1
    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->h()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const-string/jumbo v3, "passId"

    invoke-virtual {p1}, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;->getPassInfo()Lcom/alipay/kabaoprod/core/model/model/PassInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/kabaoprod/core/model/model/PassInfo;->getPassBaseInfo()Lcom/alipay/kabaoprod/core/model/model/PassBaseInfo;

    move-result-object v4

    iget-object v4, v4, Lcom/alipay/kabaoprod/core/model/model/PassBaseInfo;->passId:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v3

    const-string/jumbo v0, ""

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_4

    const/4 v0, 0x0

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassDetailCache;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassDetailCache;->getCustomerId()Ljava/lang/String;

    move-result-object v0

    :cond_4
    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->h()Lcom/j256/ormlite/dao/Dao;

    move-result-object v3

    invoke-interface {v3}, Lcom/j256/ormlite/dao/Dao;->deleteBuilder()Lcom/j256/ormlite/stmt/DeleteBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/j256/ormlite/stmt/DeleteBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    const-string/jumbo v5, "passId"

    invoke-virtual {p1}, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;->getPassInfo()Lcom/alipay/kabaoprod/core/model/model/PassInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alipay/kabaoprod/core/model/model/PassInfo;->getPassBaseInfo()Lcom/alipay/kabaoprod/core/model/model/PassBaseInfo;

    move-result-object v6

    iget-object v6, v6, Lcom/alipay/kabaoprod/core/model/model/PassBaseInfo;->passId:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    invoke-virtual {v4}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    const-string/jumbo v5, "userId"

    invoke-virtual {v4, v5, v2}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    invoke-virtual {v3}, Lcom/j256/ormlite/stmt/DeleteBuilder;->delete()I

    new-instance v3, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassDetailCache;

    invoke-direct {v3}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassDetailCache;-><init>()V

    invoke-virtual {p1}, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;->getPassInfo()Lcom/alipay/kabaoprod/core/model/model/PassInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/kabaoprod/core/model/model/PassInfo;->getPassBaseInfo()Lcom/alipay/kabaoprod/core/model/model/PassBaseInfo;

    move-result-object v4

    iget-object v4, v4, Lcom/alipay/kabaoprod/core/model/model/PassBaseInfo;->passId:Ljava/lang/String;

    if-eqz v4, :cond_5

    invoke-virtual {p1}, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;->getPassInfo()Lcom/alipay/kabaoprod/core/model/model/PassInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/kabaoprod/core/model/model/PassInfo;->getPassBaseInfo()Lcom/alipay/kabaoprod/core/model/model/PassBaseInfo;

    move-result-object v4

    iget-object v4, v4, Lcom/alipay/kabaoprod/core/model/model/PassBaseInfo;->gmtModified:Ljava/lang/String;

    if-nez v4, :cond_6

    :cond_5
    sget-object v0, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->a:Ljava/lang/String;

    :goto_1
    sget-object v0, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->a:Ljava/lang/String;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :cond_6
    :try_start_2
    invoke-virtual {v3, v2}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassDetailCache;->setUserId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;->getPassInfo()Lcom/alipay/kabaoprod/core/model/model/PassInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/kabaoprod/core/model/model/PassInfo;->getPassBaseInfo()Lcom/alipay/kabaoprod/core/model/model/PassBaseInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/alipay/kabaoprod/core/model/model/PassBaseInfo;->passId:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassDetailCache;->setPassId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;->getPassInfo()Lcom/alipay/kabaoprod/core/model/model/PassInfo;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->a(Lcom/alipay/mobile/alipassapp/biz/bean/AlipassDetailCache;Lcom/alipay/kabaoprod/core/model/model/PassInfo;)V

    invoke-virtual {p1}, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;->getPassInfo()Lcom/alipay/kabaoprod/core/model/model/PassInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/kabaoprod/core/model/model/PassInfo;->getPassBaseInfo()Lcom/alipay/kabaoprod/core/model/model/PassBaseInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/alipay/kabaoprod/core/model/model/PassBaseInfo;->gmtModified:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassDetailCache;->setGmtModified(Ljava/lang/String;)V

    if-nez p2, :cond_7

    const-string/jumbo p2, ""

    :cond_7
    invoke-virtual {v3, p2}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassDetailCache;->setBizType(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassDetailCache;->setIsClicked(I)V

    invoke-virtual {v3, v0}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassDetailCache;->setCustomerId(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->h()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/j256/ormlite/dao/Dao;->createOrUpdate(Ljava/lang/Object;)Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;

    move-result-object v0

    sget-object v2, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->a:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassDetailCache;->toString()Ljava/lang/String;

    sget-object v2, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "NumLinesChanged="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;->getNumLinesChanged()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", isCreated="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;->isCreated()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", isUpdated="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;->isUpdated()Z

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public final a(Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;Ljava/lang/String;)V
    .locals 14

    const/4 v4, 0x0

    sget-object v7, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->j:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->k()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    if-nez p2, :cond_1

    :cond_0
    monitor-exit v7

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->j()Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const-string/jumbo v2, "userId"

    invoke-virtual {v1, v2, v3}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const-string/jumbo v2, "status"

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const-string/jumbo v2, "bizType"

    move-object/from16 v0, p2

    invoke-virtual {v1, v2, v0}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    move v2, v4

    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_3

    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->j()Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->deleteBuilder()Lcom/j256/ormlite/stmt/DeleteBuilder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/j256/ormlite/stmt/DeleteBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v8

    const-string/jumbo v9, "id"

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassOffline;

    invoke-virtual {v1}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassOffline;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v9, v1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    invoke-virtual {v6}, Lcom/j256/ormlite/stmt/DeleteBuilder;->delete()I

    move-result v1

    if-lez v1, :cond_2

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassOffline;

    invoke-static {v1}, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->b(Lcom/alipay/mobile/alipassapp/biz/bean/AlipassOffline;)V

    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->j()Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const-string/jumbo v2, "userId"

    invoke-virtual {v1, v2, v3}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const-string/jumbo v2, "status"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const-string/jumbo v2, "bizType"

    move-object/from16 v0, p2

    invoke-virtual {v1, v2, v0}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v8

    if-eqz p1, :cond_7

    iget-boolean v1, p1, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;->success:Z

    if-eqz v1, :cond_7

    invoke-virtual {p1}, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;->getPassTimelineList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {p1}, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;->getPassTimelineList()Ljava/util/List;

    move-result-object v9

    move v3, v4

    :goto_2
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_7

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/kabaoprod/core/model/model/PassTimelineInfo;

    invoke-virtual {v1}, Lcom/alipay/kabaoprod/core/model/model/PassTimelineInfo;->getPassList()Ljava/util/List;

    move-result-object v10

    if-eqz v10, :cond_6

    move v5, v4

    :goto_3
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    if-ge v5, v1, :cond_6

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/alipay/kabaoprod/core/model/model/PassBaseInfo;

    move-object v2, v0

    if-eqz v2, :cond_5

    move v6, v4

    :goto_4
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    if-ge v6, v1, :cond_5

    iget-object v11, v2, Lcom/alipay/kabaoprod/core/model/model/PassBaseInfo;->partnerId:Ljava/lang/String;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassOffline;

    invoke-virtual {v1}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassOffline;->getPartnerId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v11, v2, Lcom/alipay/kabaoprod/core/model/model/PassBaseInfo;->serialNumber:Ljava/lang/String;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassOffline;

    invoke-virtual {v1}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassOffline;->getSerialNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_4

    :try_start_1
    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->j()Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->deleteBuilder()Lcom/j256/ormlite/stmt/DeleteBuilder;

    move-result-object v11

    invoke-virtual {v11}, Lcom/j256/ormlite/stmt/DeleteBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v12

    const-string/jumbo v13, "id"

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassOffline;

    invoke-virtual {v1}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassOffline;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v12, v13, v1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    invoke-virtual {v11}, Lcom/j256/ormlite/stmt/DeleteBuilder;->delete()I

    move-result v1

    if-lez v1, :cond_4

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassOffline;

    invoke-static {v1}, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->b(Lcom/alipay/mobile/alipassapp/biz/bean/AlipassOffline;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_4
    :goto_5
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_4

    :catch_0
    move-exception v1

    :try_start_2
    sget-object v11, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/sql/SQLException;->getMessage()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v1

    monitor-exit v7

    throw v1

    :cond_5
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_3

    :cond_6
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto/16 :goto_2

    :cond_7
    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v2, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->j:Ljava/lang/Object;

    monitor-enter v2

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->a:Ljava/lang/String;

    monitor-exit v2

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->h()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const-string/jumbo v1, "userId"

    invoke-virtual {v0, v1, p1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const-string/jumbo v1, "bizType"

    invoke-virtual {v0, v1, p2}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v3

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassDetailCache;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassDetailCache;->getPassId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassDetailCache;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassDetailCache;->getPassId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public final a(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/alipassapp/biz/bean/AlipassOffline;",
            ">;)V"
        }
    .end annotation

    sget-object v1, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->j:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->f()Lcom/alipay/mobile/alipassapp/biz/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/b/a;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v0

    invoke-interface {v0}, Lcom/j256/ormlite/support/ConnectionSource;->getReadWriteConnection()Lcom/j256/ormlite/support/DatabaseConnection;

    move-result-object v2

    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->f()Lcom/alipay/mobile/alipassapp/biz/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/b/a;->d()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Lcom/j256/ormlite/dao/Dao;->setAutoCommit(Lcom/j256/ormlite/support/DatabaseConnection;Z)V

    const-string/jumbo v0, "savePointOffline"

    invoke-interface {v2, v0}, Lcom/j256/ormlite/support/DatabaseConnection;->setSavePoint(Ljava/lang/String;)Ljava/sql/Savepoint;

    move-result-object v3

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassOffline;

    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->f()Lcom/alipay/mobile/alipassapp/biz/b/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/alipassapp/biz/b/a;->d()Lcom/j256/ormlite/dao/Dao;

    move-result-object v5

    invoke-interface {v5, v0}, Lcom/j256/ormlite/dao/Dao;->createOrUpdate(Ljava/lang/Object;)Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-interface {v2, v3}, Lcom/j256/ormlite/support/DatabaseConnection;->rollback(Ljava/sql/Savepoint;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    :try_start_3
    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->f()Lcom/alipay/mobile/alipassapp/biz/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/b/a;->d()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Lcom/j256/ormlite/dao/Dao;->setAutoCommit(Lcom/j256/ormlite/support/DatabaseConnection;Z)V

    :goto_2
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void

    :cond_0
    :try_start_4
    invoke-interface {v2, v3}, Lcom/j256/ormlite/support/DatabaseConnection;->commit(Ljava/sql/Savepoint;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :try_start_5
    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->f()Lcom/alipay/mobile/alipassapp/biz/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/b/a;->d()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Lcom/j256/ormlite/dao/Dao;->setAutoCommit(Lcom/j256/ormlite/support/DatabaseConnection;Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_1
    move-exception v0

    :try_start_6
    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->f()Lcom/alipay/mobile/alipassapp/biz/b/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/alipassapp/biz/b/a;->d()Lcom/j256/ormlite/dao/Dao;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v2, v4}, Lcom/j256/ormlite/dao/Dao;->setAutoCommit(Lcom/j256/ormlite/support/DatabaseConnection;Z)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public final a(Ljava/util/List;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    sget-object v2, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->j:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->k()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    :cond_0
    sget-object v0, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->a:Ljava/lang/String;

    monitor-exit v2

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->j()Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->deleteBuilder()Lcom/j256/ormlite/stmt/DeleteBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/DeleteBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    const-string/jumbo v4, "userId"

    invoke-virtual {v3, v4, v0}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    invoke-virtual {v3}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    const-string/jumbo v4, "status"

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    invoke-virtual {v3}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    const-string/jumbo v4, "bizType"

    invoke-virtual {v3, v4, p2}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/DeleteBuilder;->delete()I

    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->j()Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const-string/jumbo v3, "userId"

    invoke-virtual {v1, v3, v0}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const-string/jumbo v1, "status"

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const-string/jumbo v1, "bizType"

    invoke-virtual {v0, v1, p2}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassOffline;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassOffline;->getPassId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassOffline;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassOffline;->getPassId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->j()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->deleteBuilder()Lcom/j256/ormlite/stmt/DeleteBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/j256/ormlite/stmt/DeleteBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v5

    const-string/jumbo v6, "id"

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassOffline;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassOffline;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v6, v0}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    invoke-virtual {v4}, Lcom/j256/ormlite/stmt/DeleteBuilder;->delete()I

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_4
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public final a(Ljava/util/List;Ljava/lang/String;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/kabaoprod/core/model/model/PassTimelineInfo;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    sget-object v2, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->j:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->k()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    if-nez p2, :cond_1

    :cond_0
    sget-object v0, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->a:Ljava/lang/String;

    monitor-exit v2

    :goto_0
    return-void

    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/kabaoprod/core/model/model/PassTimelineInfo;

    invoke-virtual {v0}, Lcom/alipay/kabaoprod/core/model/model/PassTimelineInfo;->getPassList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/kabaoprod/core/model/model/PassBaseInfo;

    iget-object v7, v1, Lcom/alipay/kabaoprod/core/model/model/PassBaseInfo;->passId:Ljava/lang/String;

    if-eqz v7, :cond_3

    iget-object v7, v1, Lcom/alipay/kabaoprod/core/model/model/PassBaseInfo;->gmtModified:Ljava/lang/String;

    if-nez v7, :cond_4

    :cond_3
    sget-object v1, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->a:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_4
    :try_start_1
    new-instance v7, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassListCache;

    invoke-direct {v7}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassListCache;-><init>()V

    invoke-virtual {v7, p2}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassListCache;->setBizType(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/kabaoprod/core/model/model/PassTimelineInfo;->getPassDate()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassListCache;->setDate(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassListCache;->setUserId(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassListCache;->setPassBaseInfo(Ljava/lang/String;)V

    iget-object v8, v1, Lcom/alipay/kabaoprod/core/model/model/PassBaseInfo;->passId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassListCache;->setPassId(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/alipay/kabaoprod/core/model/model/PassBaseInfo;->gmtModified:Ljava/lang/String;

    invoke-virtual {v7, v1}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassListCache;->setGmtModified(Ljava/lang/String;)V

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_5
    :try_start_2
    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->f()Lcom/alipay/mobile/alipassapp/biz/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/b/a;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v0

    invoke-interface {v0}, Lcom/j256/ormlite/support/ConnectionSource;->getReadWriteConnection()Lcom/j256/ormlite/support/DatabaseConnection;

    move-result-object v1

    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->g()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    const/4 v5, 0x0

    invoke-interface {v0, v1, v5}, Lcom/j256/ormlite/dao/Dao;->setAutoCommit(Lcom/j256/ormlite/support/DatabaseConnection;Z)V

    const-string/jumbo v0, "temp"

    invoke-interface {v1, v0}, Lcom/j256/ormlite/support/DatabaseConnection;->setSavePoint(Ljava/lang/String;)Ljava/sql/Savepoint;

    move-result-object v5

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->g()Lcom/j256/ormlite/dao/Dao;

    move-result-object v4

    invoke-interface {v4}, Lcom/j256/ormlite/dao/Dao;->deleteBuilder()Lcom/j256/ormlite/stmt/DeleteBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/j256/ormlite/stmt/DeleteBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v6

    const-string/jumbo v7, "bizType"

    invoke-virtual {v6, v7, p2}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v6

    invoke-virtual {v6}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v6

    const-string/jumbo v7, "userId"

    invoke-virtual {v6, v7, v3}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v6

    invoke-virtual {v6}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v6

    const-string/jumbo v7, "status"

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    invoke-virtual {v4}, Lcom/j256/ormlite/stmt/DeleteBuilder;->delete()I

    move-result v4

    sget-object v6, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "clean list, delete row="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassListCache;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_2

    :try_start_4
    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->g()Lcom/j256/ormlite/dao/Dao;

    move-result-object v6

    invoke-interface {v6, v0}, Lcom/j256/ormlite/dao/Dao;->createOrUpdate(Ljava/lang/Object;)Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_2

    :cond_6
    :try_start_5
    invoke-interface {v1, v5}, Lcom/j256/ormlite/support/DatabaseConnection;->commit(Ljava/sql/Savepoint;)V

    sget-object v0, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->a:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_2

    :try_start_6
    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->g()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    const/4 v4, 0x1

    invoke-interface {v0, v1, v4}, Lcom/j256/ormlite/dao/Dao;->setAutoCommit(Lcom/j256/ormlite/support/DatabaseConnection;Z)V

    :goto_3
    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->i()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->deleteBuilder()Lcom/j256/ormlite/stmt/DeleteBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/DeleteBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const-string/jumbo v4, "bizType"

    invoke-virtual {v1, v4, p2}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const-string/jumbo v4, "userId"

    invoke-virtual {v1, v4, v3}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/DeleteBuilder;->delete()I

    new-instance v0, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassListStatus;

    invoke-direct {v0}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassListStatus;-><init>()V

    invoke-virtual {v0, p2}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassListStatus;->setBizType(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassListStatus;->setUserId(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassListStatus;->setHasPast(I)V

    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->i()Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/j256/ormlite/dao/Dao;->createOrUpdate(Ljava/lang/Object;)Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;

    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :catch_2
    move-exception v0

    :try_start_7
    invoke-interface {v1, v5}, Lcom/j256/ormlite/support/DatabaseConnection;->rollback(Ljava/sql/Savepoint;)V

    sget-object v0, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->a:Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->g()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    const/4 v4, 0x1

    invoke-interface {v0, v1, v4}, Lcom/j256/ormlite/dao/Dao;->setAutoCommit(Lcom/j256/ormlite/support/DatabaseConnection;Z)V

    goto :goto_3

    :catchall_1
    move-exception v0

    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->g()Lcom/j256/ormlite/dao/Dao;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v1, v4}, Lcom/j256/ormlite/dao/Dao;->setAutoCommit(Lcom/j256/ormlite/support/DatabaseConnection;Z)V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
.end method

.method public final a(Lcom/alipay/mobile/alipassapp/biz/bean/AlipassListCache;)Z
    .locals 2

    sget-object v1, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->j:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->g()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Lcom/alipay/mobile/alipassapp/biz/bean/AlipassOffline;)Z
    .locals 5

    const/4 v1, 0x0

    sget-object v2, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->j:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->j()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const-string/jumbo v3, "userId"

    invoke-virtual {p1}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassOffline;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const-string/jumbo v3, "partnerId"

    invoke-virtual {p1}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassOffline;->getPartnerId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const-string/jumbo v3, "serialNumber"

    invoke-virtual {p1}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassOffline;->getSerialNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassOffline;

    invoke-virtual {p1}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassOffline;->getPassId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassOffline;->setPassId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassOffline;->getStatus()I

    move-result v3

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassOffline;->getStatus()I

    move-result v4

    if-le v3, v4, :cond_0

    invoke-virtual {p1}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassOffline;->getStatus()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassOffline;->setStatus(I)V

    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->j()Lcom/j256/ormlite/dao/Dao;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    monitor-exit v2

    move v0, v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public final a(Ljava/lang/String;Lcom/alipay/mobile/alipassapp/biz/bean/AlipassOffline;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    sget-object v2, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->j:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p2}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassOffline;->getPartnerId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p2}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassOffline;->getSerialNumber()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->j()Lcom/j256/ormlite/dao/Dao;

    move-result-object v3

    invoke-interface {v3}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    const-string/jumbo v4, "partnerId"

    invoke-virtual {p2}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassOffline;->getPartnerId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    invoke-virtual {v3}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    const-string/jumbo v4, "serialNumber"

    invoke-virtual {p2}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassOffline;->getSerialNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    invoke-virtual {v3}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    const-string/jumbo v4, "userId"

    invoke-virtual {v3, v4, p1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    invoke-virtual {v3}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    monitor-exit v2

    :goto_0
    return v0

    :cond_0
    new-instance v3, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassOffline;

    invoke-direct {v3}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassOffline;-><init>()V

    invoke-virtual {v3, p1}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassOffline;->setUserId(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassOffline;->getBizType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassOffline;->setBizType(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassOffline;->getPassPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassOffline;->setPassPath(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassOffline;->getPassBaseInfo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassOffline;->setPassBaseInfo(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassOffline;->getPartnerId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassOffline;->setPartnerId(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassOffline;->getSerialNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassOffline;->setSerialNumber(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassOffline;->setTimestamp(J)V

    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->j()Lcom/j256/ormlite/dao/Dao;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I

    move-result v3

    if-ne v3, v1, :cond_1

    move v0, v1

    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;)Z
    .locals 6

    const/4 v0, 0x0

    sget-object v2, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->j:Ljava/lang/Object;

    monitor-enter v2

    if-eqz p4, :cond_0

    :try_start_0
    invoke-virtual {p4}, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;->getPassInfo()Lcom/alipay/kabaoprod/core/model/model/PassInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p4}, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;->getPassInfo()Lcom/alipay/kabaoprod/core/model/model/PassInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/kabaoprod/core/model/model/PassInfo;->getPassBaseInfo()Lcom/alipay/kabaoprod/core/model/model/PassBaseInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p4}, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;->getPassInfo()Lcom/alipay/kabaoprod/core/model/model/PassInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/kabaoprod/core/model/model/PassInfo;->getPassBaseInfo()Lcom/alipay/kabaoprod/core/model/model/PassBaseInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/alipay/kabaoprod/core/model/model/PassBaseInfo;->passId:Ljava/lang/String;

    if-nez v1, :cond_1

    :cond_0
    sget-object v1, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->a:Ljava/lang/String;

    monitor-exit v2

    :goto_0
    return v0

    :cond_1
    if-nez p2, :cond_2

    sget-object v1, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->a:Ljava/lang/String;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_2
    :try_start_1
    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->h()Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->deleteBuilder()Lcom/j256/ormlite/stmt/DeleteBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/DeleteBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    const-string/jumbo v4, "passId"

    invoke-virtual {p4}, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;->getPassInfo()Lcom/alipay/kabaoprod/core/model/model/PassInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/kabaoprod/core/model/model/PassInfo;->getPassBaseInfo()Lcom/alipay/kabaoprod/core/model/model/PassBaseInfo;

    move-result-object v5

    iget-object v5, v5, Lcom/alipay/kabaoprod/core/model/model/PassBaseInfo;->passId:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    invoke-virtual {v3}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    const-string/jumbo v4, "userId"

    invoke-virtual {v3, v4, p2}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/DeleteBuilder;->delete()I

    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->g()Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const-string/jumbo v3, "passId"

    invoke-virtual {p4}, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;->getPassInfo()Lcom/alipay/kabaoprod/core/model/model/PassInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/kabaoprod/core/model/model/PassInfo;->getPassBaseInfo()Lcom/alipay/kabaoprod/core/model/model/PassBaseInfo;

    move-result-object v4

    iget-object v4, v4, Lcom/alipay/kabaoprod/core/model/model/PassBaseInfo;->passId:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const-string/jumbo v3, "userId"

    invoke-virtual {v1, v3, p2}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassListCache;

    invoke-direct {v1}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassListCache;-><init>()V

    invoke-virtual {v1, p3}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassListCache;->setBizType(Ljava/lang/String;)V

    const-string/jumbo v3, ""

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassListCache;->setDate(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassListCache;->setUserId(Ljava/lang/String;)V

    invoke-virtual {p4}, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;->getPassInfo()Lcom/alipay/kabaoprod/core/model/model/PassInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/kabaoprod/core/model/model/PassInfo;->getPassBaseInfo()Lcom/alipay/kabaoprod/core/model/model/PassBaseInfo;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassListCache;->setPassBaseInfo(Ljava/lang/String;)V

    invoke-virtual {p4}, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;->getPassInfo()Lcom/alipay/kabaoprod/core/model/model/PassInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/kabaoprod/core/model/model/PassInfo;->getPassBaseInfo()Lcom/alipay/kabaoprod/core/model/model/PassBaseInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/alipay/kabaoprod/core/model/model/PassBaseInfo;->passId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassListCache;->setPassId(Ljava/lang/String;)V

    invoke-virtual {p4}, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;->getPassInfo()Lcom/alipay/kabaoprod/core/model/model/PassInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/kabaoprod/core/model/model/PassInfo;->getPassBaseInfo()Lcom/alipay/kabaoprod/core/model/model/PassBaseInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/alipay/kabaoprod/core/model/model/PassBaseInfo;->gmtModified:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassListCache;->setGmtModified(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->g()Lcom/j256/ormlite/dao/Dao;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/j256/ormlite/dao/Dao;->createOrUpdate(Ljava/lang/Object;)Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;

    :cond_3
    new-instance v3, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassDetailCache;

    invoke-direct {v3}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassDetailCache;-><init>()V

    invoke-virtual {v3, p2}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassDetailCache;->setUserId(Ljava/lang/String;)V

    invoke-virtual {p4}, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;->getPassInfo()Lcom/alipay/kabaoprod/core/model/model/PassInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/kabaoprod/core/model/model/PassInfo;->getPassBaseInfo()Lcom/alipay/kabaoprod/core/model/model/PassBaseInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/alipay/kabaoprod/core/model/model/PassBaseInfo;->passId:Ljava/lang/String;

    invoke-virtual {v3, v1}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassDetailCache;->setPassId(Ljava/lang/String;)V

    invoke-virtual {p4}, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;->getPassInfo()Lcom/alipay/kabaoprod/core/model/model/PassInfo;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->a(Lcom/alipay/mobile/alipassapp/biz/bean/AlipassDetailCache;Lcom/alipay/kabaoprod/core/model/model/PassInfo;)V

    invoke-virtual {p4}, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;->getPassInfo()Lcom/alipay/kabaoprod/core/model/model/PassInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/kabaoprod/core/model/model/PassInfo;->getPassBaseInfo()Lcom/alipay/kabaoprod/core/model/model/PassBaseInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/alipay/kabaoprod/core/model/model/PassBaseInfo;->gmtModified:Ljava/lang/String;

    if-nez v1, :cond_7

    const-string/jumbo v1, ""

    :goto_1
    invoke-virtual {v3, v1}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassDetailCache;->setGmtModified(Ljava/lang/String;)V

    if-nez p3, :cond_4

    const-string/jumbo p3, ""

    :cond_4
    invoke-virtual {v3, p3}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassDetailCache;->setBizType(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassDetailCache;->setIsClicked(I)V

    if-nez p1, :cond_5

    const-string/jumbo p1, ""

    :cond_5
    invoke-virtual {v3, p1}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassDetailCache;->setCustomerId(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->h()Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    invoke-interface {v1, v3}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I

    move-result v1

    if-lez v1, :cond_6

    const/4 v0, 0x1

    :cond_6
    monitor-exit v2

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p4}, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;->getPassInfo()Lcom/alipay/kabaoprod/core/model/model/PassInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/kabaoprod/core/model/model/PassInfo;->getPassBaseInfo()Lcom/alipay/kabaoprod/core/model/model/PassBaseInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/alipay/kabaoprod/core/model/model/PassBaseInfo;->gmtModified:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;
    .locals 5

    sget-object v2, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->j:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->a:Ljava/lang/String;

    new-instance v1, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;

    invoke-direct {v1}, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;->success:Z

    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->k()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    sget-object v0, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->a:Ljava/lang/String;

    monitor-exit v2

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->h()Lcom/j256/ormlite/dao/Dao;

    move-result-object v3

    invoke-interface {v3}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    const-string/jumbo v4, "userId"

    invoke-virtual {v3, v4, v0}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const-string/jumbo v3, "passId"

    invoke-virtual {v0, v3, p1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v0

    sget-object v3, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "cache detail size is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassDetailCache;

    sget-object v3, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassDetailCache;->toString()Ljava/lang/String;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassDetailCache;->getPassInfo()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->a(Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;Ljava/lang/String;)V

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;->success:Z

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassDetailCache;->getBizType()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassDetailCache;->getBizType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {v0, p2}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassDetailCache;->setBizType(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->h()Lcom/j256/ormlite/dao/Dao;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I

    :cond_3
    sget-object v0, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->a:Ljava/lang/String;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public final b()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/alipassapp/biz/bean/AlipassOfflineV2;",
            ">;"
        }
    .end annotation

    sget-object v1, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->j:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->i:Lcom/j256/ormlite/dao/Dao;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->f()Lcom/alipay/mobile/alipassapp/biz/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/b/a;->e()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->i:Lcom/j256/ormlite/dao/Dao;

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->i:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "userId"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "passPath"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "bizType"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "partnerId"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "serialNumber"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "remotePassId"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "status"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "passBaseInfo"

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Lcom/j256/ormlite/stmt/QueryBuilder;->selectColumns([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->query()Ljava/util/List;

    move-result-object v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final b(Ljava/util/List;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    sget-object v3, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->j:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->k()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    if-nez p2, :cond_1

    :cond_0
    sget-object v0, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->a:Ljava/lang/String;

    monitor-exit v3

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->g()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const-string/jumbo v2, "userId"

    invoke-virtual {v0, v2, v4}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const-string/jumbo v2, "status"

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const-string/jumbo v2, "bizType"

    invoke-virtual {v0, v2, p2}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v5

    move v2, v1

    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassListCache;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassListCache;->getPassId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v4, v0}, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->g()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->deleteBuilder()Lcom/j256/ormlite/stmt/DeleteBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/DeleteBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    const-string/jumbo v5, "userId"

    invoke-virtual {v2, v5, v4}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    const-string/jumbo v5, "status"

    const/4 v6, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    const-string/jumbo v5, "bizType"

    invoke-virtual {v2, v5, p2}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/DeleteBuilder;->delete()I

    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->g()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const-string/jumbo v2, "userId"

    invoke-virtual {v0, v2, v4}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const-string/jumbo v2, "status"

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const-string/jumbo v2, "bizType"

    invoke-virtual {v0, v2, p2}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassListCache;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassListCache;->getPassId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassListCache;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassListCache;->getPassId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v4, v0}, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_4
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0
.end method

.method public final b(Lcom/alipay/mobile/alipassapp/biz/bean/AlipassListCache;)Z
    .locals 2

    sget-object v1, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->j:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->g()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 5

    const/4 v1, 0x0

    sget-object v2, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->j:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->k()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->a:Ljava/lang/String;

    monitor-exit v2

    move v0, v1

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, v0, p1}, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->g()Lcom/j256/ormlite/dao/Dao;

    move-result-object v3

    invoke-interface {v3}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    const-string/jumbo v4, "passId"

    invoke-virtual {v3, v4, p1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    invoke-virtual {v3}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    const-string/jumbo v4, "userId"

    invoke-virtual {v3, v4, v0}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassListCache;

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassListCache;->setStatus(I)V

    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->g()Lcom/j256/ormlite/dao/Dao;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    :try_start_1
    sget-object v0, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->a:Ljava/lang/String;

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;)I
    .locals 5

    const/4 v0, 0x0

    sget-object v1, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->j:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->k()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    sget-object v2, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->a:Ljava/lang/String;

    monitor-exit v1

    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->h()Lcom/j256/ormlite/dao/Dao;

    move-result-object v3

    invoke-interface {v3}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    const-string/jumbo v4, "userId"

    invoke-virtual {v3, v4, v2}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    const-string/jumbo v3, "passId"

    invoke-virtual {v2, v3, p1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "cache detail size is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    const/4 v0, 0x0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassDetailCache;

    sget-object v2, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassDetailCache;->toString()Ljava/lang/String;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassDetailCache;->getIsClicked()I

    move-result v0

    :cond_2
    sget-object v2, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->a:Ljava/lang/String;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/alipassapp/biz/bean/AlipassOffline;
    .locals 5

    const/4 v0, 0x0

    sget-object v1, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->j:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->k()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    sget-object v2, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->a:Ljava/lang/String;

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_1
    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->j()Lcom/j256/ormlite/dao/Dao;

    move-result-object v3

    invoke-interface {v3}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    const-string/jumbo v4, "userId"

    invoke-virtual {v3, v4, v2}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    const-string/jumbo v3, "partnerId"

    invoke-virtual {v2, v3, p1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    const-string/jumbo v3, "serialNumber"

    invoke-virtual {v2, v3, p2}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    const/4 v0, 0x0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassOffline;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_2
    monitor-exit v1

    goto :goto_0
.end method

.method public final c()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v3, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->j:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->k()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->a:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    monitor-exit v3

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->j()Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const-string/jumbo v2, "userId"

    invoke-virtual {v1, v2, v0}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v2, v0

    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassOffline;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassOffline;->getStatus()I

    move-result v0

    const/4 v5, 0x3

    if-eq v0, v5, :cond_1

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassOffline;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassOffline;->getStatus()I

    move-result v0

    const/4 v5, 0x4

    if-ne v0, v5, :cond_2

    :cond_1
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassOffline;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassOffline;->getPassId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassOffline;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassOffline;->getPassId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_3
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0
.end method

.method public final d(Ljava/lang/String;)Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;
    .locals 13

    const/4 v2, 0x1

    const/4 v3, 0x0

    sget-object v4, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->j:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->a:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    new-instance v1, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;

    invoke-direct {v1}, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;->setHasPast(I)V

    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->k()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    sget-object v0, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;->success:Z

    monitor-exit v4

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->j()Lcom/j256/ormlite/dao/Dao;

    move-result-object v9

    invoke-interface {v9}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v9

    const-string/jumbo v10, "timestamp"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lcom/j256/ormlite/stmt/QueryBuilder;->orderBy(Ljava/lang/String;Z)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v9

    invoke-virtual {v9}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v9

    const-string/jumbo v10, "userId"

    invoke-virtual {v9, v10, v0}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v9

    invoke-virtual {v9}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v9

    const-string/jumbo v10, "bizType"

    invoke-virtual {v9, v10, p1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v9

    invoke-virtual {v9}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v9

    const-string/jumbo v10, "status"

    const/4 v11, 0x3

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/j256/ormlite/stmt/Where;->lt(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v9

    invoke-virtual {v9}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v9

    sget-object v10, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->a:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "offline list size is "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ",userId="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v10, ",bizType="

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    sget-object v0, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "queryBuilderTime is "

    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v7, v10, v7

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassOffline;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassOffline;->getPassBaseInfo()Ljava/lang/String;

    move-result-object v0

    const-class v11, Lcom/alipay/kabaoprod/core/model/model/PassBaseInfo;

    invoke-static {v0, v11}, Lcom/alipay/mobile/alipassapp/biz/common/b;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_2
    :try_start_2
    sget-object v0, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "fasejsonTime is "

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long v7, v11, v7

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_3

    new-instance v9, Lcom/alipay/kabaoprod/core/model/model/PassTimelineInfo;

    invoke-direct {v9}, Lcom/alipay/kabaoprod/core/model/model/PassTimelineInfo;-><init>()V

    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Lcom/alipay/kabaoprod/core/model/model/PassTimelineInfo;->setPassDate(Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Lcom/alipay/kabaoprod/core/model/model/PassTimelineInfo;->setPassList(Ljava/util/List;)V

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual {v1, v0}, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;->setPassTimelineList(Ljava/util/List;)V

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;->success:Z

    invoke-virtual {v1}, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;->getPassTimelineList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v2

    :goto_2
    invoke-virtual {v1, v0}, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;->setHasCurrent(I)V

    sget-object v0, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "passTimelineListTime is "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v7

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    sget-object v0, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "queryOfflineAlipassForList finish!!!!! total time is "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v5

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v1

    goto/16 :goto_0

    :cond_4
    move v0, v3

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0
.end method

.method public final d()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v3, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->j:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->k()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->a:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    monitor-exit v3

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->g()Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const-string/jumbo v2, "userId"

    invoke-virtual {v1, v2, v0}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v2, v0

    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassListCache;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassListCache;->getStatus()I

    move-result v0

    const/4 v5, 0x3

    if-eq v0, v5, :cond_1

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassListCache;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassListCache;->getStatus()I

    move-result v0

    const/4 v5, 0x4

    if-ne v0, v5, :cond_2

    :cond_1
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassListCache;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassListCache;->getPassId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_3
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0
.end method

.method public final d(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    sget-object v3, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->j:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->k()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    :cond_0
    sget-object v0, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->a:Ljava/lang/String;

    monitor-exit v3

    move v0, v1

    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->j()Lcom/j256/ormlite/dao/Dao;

    move-result-object v4

    invoke-interface {v4}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    const-string/jumbo v5, "partnerId"

    invoke-virtual {v4, v5, p1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    invoke-virtual {v4}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    const-string/jumbo v5, "serialNumber"

    invoke-virtual {v4, v5, p2}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    invoke-virtual {v4}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    const-string/jumbo v5, "userId"

    invoke-virtual {v4, v5, v0}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    invoke-virtual {v4}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_3

    const/4 v0, 0x0

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassOffline;

    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassOffline;->setStatus(I)V

    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->j()Lcom/j256/ormlite/dao/Dao;

    move-result-object v4

    invoke-interface {v4, v0}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_2

    move v0, v2

    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    :try_start_1
    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->g()Lcom/j256/ormlite/dao/Dao;

    move-result-object v4

    invoke-interface {v4}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    const-string/jumbo v5, "partnerId"

    invoke-virtual {v4, v5, p1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    invoke-virtual {v4}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    const-string/jumbo v5, "serialNumber"

    invoke-virtual {v4, v5, p2}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    invoke-virtual {v4}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    const-string/jumbo v5, "userId"

    invoke-virtual {v4, v5, v0}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_5

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassListCache;

    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassListCache;->setStatus(I)V

    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->g()Lcom/j256/ormlite/dao/Dao;

    move-result-object v4

    invoke-interface {v4, v0}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_4

    move v0, v2

    :goto_2
    monitor-exit v3

    goto/16 :goto_0

    :cond_4
    move v0, v1

    goto :goto_2

    :cond_5
    sget-object v0, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->a:Ljava/lang/String;

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    goto/16 :goto_0
.end method

.method public final e()Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;
    .locals 13

    const/4 v3, 0x1

    const/4 v4, 0x0

    sget-object v5, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->j:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->a:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    new-instance v2, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;

    invoke-direct {v2}, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;-><init>()V

    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->k()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, v2, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;->success:Z

    monitor-exit v5

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->g()Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const-string/jumbo v10, "userId"

    invoke-virtual {v1, v10, v0}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const-string/jumbo v10, "status"

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v1

    sget-object v10, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->a:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "cache list size is "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ",userId="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    sget-object v10, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->a:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "queryBuilderTime is "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long v8, v11, v8

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->i()Lcom/j256/ormlite/dao/Dao;

    move-result-object v10

    invoke-interface {v10}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v10

    invoke-virtual {v10}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v10

    const-string/jumbo v11, "userId"

    invoke-virtual {v10, v11, v0}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_1

    const/4 v10, 0x0

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassListStatus;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassListStatus;->getHasPast()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;->setHasPast(I)V

    sget-object v0, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "hasPast value is "

    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;->getHasPast()I

    move-result v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_1
    sget-object v0, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "listStatusQueryBuilderTime is "

    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v8, v10, v8

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v10

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassListCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassListCache;->getDate()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v10, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassListCache;->getDate()Ljava/lang/String;

    move-result-object v1

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v10, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassListCache;->getDate()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v10, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassListCache;->getPassBaseInfo()Ljava/lang/String;

    move-result-object v0

    const-class v12, Lcom/alipay/kabaoprod/core/model/model/PassBaseInfo;

    invoke-static {v0, v12}, Lcom/alipay/mobile/alipassapp/biz/common/b;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_3
    :try_start_2
    sget-object v0, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "fasejsonTime is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long v8, v11, v8

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v10}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v12, Lcom/alipay/kabaoprod/core/model/model/PassTimelineInfo;

    invoke-direct {v12}, Lcom/alipay/kabaoprod/core/model/model/PassTimelineInfo;-><init>()V

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v12, v0}, Lcom/alipay/kabaoprod/core/model/model/PassTimelineInfo;->setPassDate(Ljava/lang/String;)V

    invoke-virtual {v12}, Lcom/alipay/kabaoprod/core/model/model/PassTimelineInfo;->getPassDate()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v12, v0}, Lcom/alipay/kabaoprod/core/model/model/PassTimelineInfo;->setPassList(Ljava/util/List;)V

    invoke-interface {v1, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v5

    throw v0

    :cond_4
    :try_start_3
    invoke-virtual {v2, v1}, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;->setPassTimelineList(Ljava/util/List;)V

    invoke-virtual {v2}, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;->getPassTimelineList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_5

    move v0, v3

    :goto_3
    iput-boolean v0, v2, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;->success:Z

    invoke-virtual {v2}, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;->getPassTimelineList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_6

    move v0, v3

    :goto_4
    invoke-virtual {v2, v0}, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;->setHasCurrent(I)V

    sget-object v0, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "passTimelineListTime is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v8

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    sget-object v0, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "queryAllCacheList finish!!!!! total time is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v6

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v0, v2

    goto/16 :goto_0

    :cond_5
    move v0, v4

    goto :goto_3

    :cond_6
    move v0, v4

    goto :goto_4
.end method

.method public final e(Ljava/lang/String;)Lcom/alipay/mobile/alipassapp/biz/bean/AlipassListCache;
    .locals 8

    const/4 v0, 0x0

    sget-object v1, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->j:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->k()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/common/utils/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v2, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->a:Ljava/lang/String;

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->g()Lcom/j256/ormlite/dao/Dao;

    move-result-object v5

    invoke-interface {v5}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v5

    const-string/jumbo v6, "userId"

    invoke-virtual {v5, v6, v2}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v5

    invoke-virtual {v5}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v5

    const-string/jumbo v6, "passId"

    invoke-virtual {v5, v6, p1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v5

    invoke-virtual {v5}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v5

    sget-object v6, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "cache list size is "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ",userId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, ",passId="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    sget-object v2, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "queryBuilderTime is "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v3, v6, v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-eqz v5, :cond_1

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v0, 0x0

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/alipassapp/biz/bean/AlipassListCache;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    monitor-exit v1

    goto :goto_0
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    sget-object v1, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->j:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/biz/a/a/a;->h()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->deleteBuilder()Lcom/j256/ormlite/stmt/DeleteBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/DeleteBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    const-string/jumbo v3, "userId"

    invoke-virtual {v2, v3, p1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    const-string/jumbo v3, "passId"

    invoke-virtual {v2, v3, p2}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/DeleteBuilder;->delete()I

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
