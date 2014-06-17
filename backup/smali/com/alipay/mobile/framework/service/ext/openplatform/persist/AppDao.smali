.class public Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;
.super Lcom/alipay/mobile/framework/service/ext/openplatform/persist/DaoTemplate;
.source "AppDao.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "AppDao"

.field private static instance:Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;-><init>()V

    sput-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->instance:Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/DaoTemplate;-><init>()V

    .line 21
    return-void
.end method

.method private getAppsByPosition(JJZ)Ljava/util/List;
    .locals 7
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJZ)",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/e;

    move-object v1, p0

    move v2, p5

    move-wide v3, p3

    move-wide v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/e;-><init>(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;ZJJ)V

    .line 95
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->excute(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/DaoExcutor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public static getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->instance:Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;-><init>()V

    sput-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->instance:Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;

    .line 26
    :cond_0
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->instance:Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;

    return-object v0
.end method


# virtual methods
.method public getAlipayAppIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 137
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/h;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/h;-><init>(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;)V

    .line 151
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->excute(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/DaoExcutor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getAlipayApps()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/f;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/f;-><init>(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;)V

    .line 110
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->excute(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/DaoExcutor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getAllAppIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 155
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/i;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/i;-><init>(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;)V

    .line 168
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->excute(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/DaoExcutor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getAllApps(Z)Ljava/util/List;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/a;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/a;-><init>(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;Z)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->excute(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/DaoExcutor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 53
    return-object v0
.end method

.method public getApkAppPackages()Ljava/util/LinkedHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 114
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/g;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/g;-><init>(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;)V

    .line 129
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->excute(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/DaoExcutor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method public getAppByAppId(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;
    .locals 1
    .parameter

    .prologue
    .line 172
    if-nez p1, :cond_0

    .line 173
    const/4 v0, 0x0

    .line 184
    :goto_0
    return-object v0

    .line 175
    :cond_0
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/j;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/j;-><init>(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;Ljava/lang/String;)V

    .line 184
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->excute(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/DaoExcutor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    goto :goto_0
.end method

.method public getAppCenterApps()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 69
    const-wide/16 v1, 0xb

    const-wide/32 v3, 0x10000

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->getAppsByPosition(JJZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAppListByIds(Ljava/util/List;Z)Ljava/util/List;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 194
    if-nez p1, :cond_0

    .line 195
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 197
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/k;

    invoke-direct {v0, p0, p2, p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/k;-><init>(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;ZLjava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->excute(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/DaoExcutor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto :goto_0
.end method

.method public getHomeApps()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    const-wide/16 v1, 0x0

    const-wide/16 v3, 0xb

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->getAppsByPosition(JJZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removeAppEntityById(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 312
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/d;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/d;-><init>(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;Ljava/lang/String;)V

    .line 325
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->excute(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/DaoExcutor;)Ljava/lang/Object;

    .line 326
    return-void
.end method

.method public saveOrUpdateAppEntity(Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;)V
    .locals 1
    .parameter

    .prologue
    .line 234
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/l;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/l;-><init>(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;)V

    .line 253
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->excute(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/DaoExcutor;)Ljava/lang/Object;

    .line 254
    return-void
.end method

.method public saveOrUpdateAppEntitys(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 264
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/b;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/b;-><init>(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;Ljava/util/List;)V

    .line 304
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->excute(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/DaoExcutor;)Ljava/lang/Object;

    .line 305
    return-void
.end method
