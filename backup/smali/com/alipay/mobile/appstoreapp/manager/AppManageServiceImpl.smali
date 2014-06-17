.class public Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;
.super Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;
.source "AppManageServiceImpl.java"

# interfaces
.implements Ljava/util/Observer;


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/alipay/mobileapp/common/service/facade/app/facade/MobileAppInfoServiceFacade;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;-><init>()V

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a:Ljava/util/Map;

    .line 70
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->b:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private static a(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/domain/MyAppEntity;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/domain/MyAppEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 152
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 153
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/MyAppEntity;

    .line 154
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/MyAppEntity;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p0}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a(Ljava/lang/String;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 155
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "filter my app, appId not exist"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/MyAppEntity;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 160
    :cond_1
    return-object v1
.end method

.method private a()V
    .locals 12

    .prologue
    const/4 v6, 0x1

    .line 180
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDao;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDao;-><init>()V

    .line 181
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDao;->getAppEntities()Ljava/util/List;

    move-result-object v7

    .line 182
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->saveOrUpdateAppEntitys(Ljava/util/List;)V

    .line 184
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDao;->getMyAppEntities()Ljava/util/List;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 185
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/MyAppDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/MyAppDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/MyAppDao;->getAllMyApps()Ljava/util/List;

    move-result-object v8

    .line 186
    if-eqz v8, :cond_0

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 188
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/MyAppDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/MyAppDao;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/MyAppDao;->saveOrUpdateMyAppEntitys(Ljava/util/List;)V

    .line 209
    :goto_0
    invoke-direct {p0, v7}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->b(Ljava/util/List;)V

    .line 210
    return-void

    .line 190
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/MyAppDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/MyAppDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/MyAppDao;->getMinRank()J

    move-result-wide v0

    .line 191
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 193
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-wide v2, v0

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/MyAppEntity;

    .line 194
    const/4 v4, 0x0

    .line 195
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/MyAppEntity;

    .line 196
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/MyAppEntity;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/MyAppEntity;->getAppId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v6

    .line 201
    :goto_2
    if-nez v1, :cond_4

    .line 202
    invoke-virtual {v0, v6}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/MyAppEntity;->setAppDisplayPlace(I)V

    .line 203
    const-wide/16 v4, 0x1

    sub-long v4, v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/MyAppEntity;->setUserRank(J)V

    .line 204
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-wide v0, v4

    :goto_3
    move-wide v2, v0

    .line 206
    goto :goto_1

    .line 207
    :cond_3
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/MyAppDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/MyAppDao;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/MyAppDao;->saveOrUpdateMyAppEntitys(Ljava/util/List;)V

    goto :goto_0

    :cond_4
    move-wide v0, v2

    goto :goto_3

    :cond_5
    move v1, v4

    goto :goto_2
.end method

.method private a(Ljava/util/List;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 273
    if-nez p1, :cond_1

    .line 306
    :cond_0
    return-void

    .line 276
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;

    .line 277
    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a:Ljava/util/Map;

    iget-object v3, v0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->appId:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 278
    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a:Ljava/util/Map;

    iget-object v3, v0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->appId:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    .line 280
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getInstallerType()Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v3, v0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->installerType:Ljava/lang/String;

    invoke-static {v3}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->getEnum(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    move-result-object v3

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getInstallerType()Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    move-result-object v4

    if-eq v3, v4, :cond_4

    .line 284
    invoke-static {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppFactory;->createApp(Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v3

    .line 285
    if-eqz v3, :cond_3

    .line 286
    invoke-virtual {v3, p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->addObserver(Ljava/util/Observer;)V

    .line 287
    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a:Ljava/util/Map;

    iget-object v0, v0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->appId:Ljava/lang/String;

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatusChangeNotify;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v3}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatusChangeNotify;-><init>(ILcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V

    invoke-direct {p0, v3, v0}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a(Ljava/util/Observable;Ljava/lang/Object;)V

    goto :goto_0

    .line 292
    :cond_3
    invoke-static {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/AppConvertor;->a(Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;)Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->setAppInfo(Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;)V

    goto :goto_0

    .line 296
    :cond_4
    invoke-static {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/AppConvertor;->a(Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;)Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->setAppInfo(Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;)V

    goto :goto_0

    .line 299
    :cond_5
    invoke-static {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppFactory;->createApp(Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v0

    .line 300
    if-eqz v0, :cond_2

    .line 301
    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    invoke-virtual {v0, p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->addObserver(Ljava/util/Observer;)V

    goto :goto_0
.end method

.method private static a(Ljava/util/Map;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 219
    if-eqz p0, :cond_2

    .line 220
    :try_start_0
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 221
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 222
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    .line 223
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isNeedAutoUpgrade()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 225
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->autoUpgradeApp()V

    .line 227
    :cond_1
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isDisplay()Z

    move-result v2

    if-nez v2, :cond_0

    .line 228
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isAddedAsMyApp()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 229
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/MyAppDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/MyAppDao;

    move-result-object v2

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/MyAppDao;->removeMyAppById(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 234
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    .line 237
    :cond_2
    return-void
.end method

.method private a(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 260
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->observers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Observer;

    .line 261
    invoke-interface {v0, p1, p2}, Ljava/util/Observer;->update(Ljava/util/Observable;Ljava/lang/Object;)V

    goto :goto_0

    .line 263
    :cond_0
    return-void
.end method

.method private static a(Lcom/alipay/mobileapp/common/service/facade/app/facade/QueryMyAppRes;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 753
    iget v1, p0, Lcom/alipay/mobileapp/common/service/facade/app/facade/QueryMyAppRes;->resultStatus:I

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_1

    .line 760
    :cond_0
    :goto_0
    return v0

    .line 755
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobileapp/common/service/facade/app/facade/QueryMyAppRes;->appList:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobileapp/common/service/facade/app/facade/QueryMyAppRes;->appList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 760
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/util/List;)Z
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 164
    if-nez p0, :cond_0

    move v0, v1

    .line 171
    :goto_0
    return v0

    .line 167
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    .line 168
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 169
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 171
    goto :goto_0
.end method

.method private b()V
    .locals 5

    .prologue
    .line 409
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->getAlipayAppIds()Ljava/util/List;

    move-result-object v0

    .line 410
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/AlipayApplication;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "apps"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 413
    const-string/jumbo v2, ".jar"

    .line 414
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    .line 415
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 416
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 417
    new-instance v4, Lcom/alipay/mobile/appstoreapp/manager/b;

    invoke-direct {v4, p0, v0}, Lcom/alipay/mobile/appstoreapp/manager/b;-><init>(Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;Ljava/lang/String;)V

    invoke-static {v4}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 431
    :cond_1
    return-void
.end method

.method private b(Ljava/util/List;)V
    .locals 5
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
    .line 315
    if-nez p1, :cond_1

    .line 344
    :cond_0
    return-void

    .line 318
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    .line 319
    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 320
    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    .line 322
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getInstallerType()Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getInstallerType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->getEnum(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    move-result-object v3

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getInstallerType()Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    move-result-object v4

    if-eq v3, v4, :cond_3

    .line 325
    invoke-static {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppFactory;->createApp(Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v3

    .line 326
    if-eqz v3, :cond_2

    .line 327
    invoke-virtual {v3, p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->addObserver(Ljava/util/Observer;)V

    .line 328
    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatusChangeNotify;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v3}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatusChangeNotify;-><init>(ILcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V

    invoke-direct {p0, v3, v0}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a(Ljava/util/Observable;Ljava/lang/Object;)V

    goto :goto_0

    .line 333
    :cond_2
    invoke-virtual {v1, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->setAppInfo(Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;)V

    goto :goto_0

    .line 336
    :cond_3
    invoke-virtual {v1, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->setAppInfo(Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;)V

    goto :goto_0

    .line 339
    :cond_4
    invoke-static {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppFactory;->createApp(Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v0

    .line 340
    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    invoke-virtual {v0, p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->addObserver(Ljava/util/Observer;)V

    goto :goto_0
.end method

.method private c()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 463
    const-string/jumbo v0, "apps_preinstall_config/preinstall_appid.json"

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v2, 0x400

    new-array v2, v2, [B

    :goto_0
    array-length v3, v2

    invoke-virtual {v0, v2, v5, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    invoke-virtual {v1, v2, v5, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    const-class v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 464
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 465
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->getAppById(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v2

    .line 466
    if-eqz v2, :cond_1

    .line 467
    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->preInstallApp()Z

    goto :goto_1

    .line 469
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "preinstall "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "failed! app not exist!!!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_1

    .line 473
    :cond_2
    return-void
.end method

.method private static c(Ljava/util/List;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 352
    if-nez p0, :cond_0

    .line 367
    :goto_0
    return-void

    .line 355
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 356
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;

    .line 357
    iget-object v3, v0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->appId:Ljava/lang/String;

    if-eqz v3, :cond_1

    const-string/jumbo v3, ""

    iget-object v4, v0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->appId:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 359
    invoke-static {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/AppConvertor;->a(Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;)Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    move-result-object v0

    .line 362
    if-eqz v0, :cond_1

    .line 363
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 366
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->saveOrUpdateAppEntitys(Ljava/util/List;)V

    goto :goto_0
.end method

.method private static d(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 437
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 438
    if-nez p0, :cond_0

    move-object v0, v1

    .line 459
    :goto_0
    return-object v0

    .line 441
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;

    .line 443
    const-string/jumbo v3, "offline"

    iget-object v4, v0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->status:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 445
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;

    move-result-object v3

    iget-object v0, v0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->appId:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->getAppByAppId(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    move-result-object v0

    .line 447
    if-eqz v0, :cond_1

    const-string/jumbo v3, "offline"

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getStatus()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 450
    const-string/jumbo v3, "offline"

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setStatus(Ljava/lang/String;)V

    .line 451
    invoke-static {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/AppConvertor;->a(Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;)Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;

    move-result-object v0

    .line 453
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 455
    :cond_2
    invoke-static {v0}, Lcom/alipay/mobile/appstoreapp/util/AppStoreUtil;->a(Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 456
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 459
    goto :goto_0
.end method

.method private static e(Ljava/util/List;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 769
    if-nez p0, :cond_1

    .line 783
    :cond_0
    return-void

    .line 771
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    .line 772
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isAddedAsMyApp()Z

    move-result v2

    if-nez v2, :cond_2

    .line 773
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 776
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/ChannelConfigUtils;->isBannedApp(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 777
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isDisplay()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 779
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/MyAppDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/MyAppDao;

    move-result-object v2

    new-instance v3, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/MyAppEntity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x1

    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/MyAppDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/MyAppDao;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/MyAppDao;->getMinRank()J

    move-result-wide v5

    invoke-direct {v3, v0, v4, v5, v6}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/MyAppEntity;-><init>(Ljava/lang/String;IJ)V

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/MyAppDao;->saveOrUpdateMyAppEntity(Lcom/alipay/mobile/framework/service/ext/openplatform/domain/MyAppEntity;)V

    goto :goto_0
.end method

.method private static f(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;",
            ">;"
        }
    .end annotation

    .prologue
    .line 792
    if-nez p0, :cond_0

    .line 793
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 807
    :goto_0
    return-object v0

    .line 794
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 795
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    .line 797
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/ChannelConfigUtils;->isBannedApp(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 798
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "10000008"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 802
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    const-class v4, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->isLogin()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->isWirelessUser()Z

    move-result v1

    :goto_2
    if-nez v1, :cond_1

    .line 803
    :cond_2
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 802
    :cond_3
    const/4 v1, 0x0

    goto :goto_2

    :cond_4
    move-object v0, v2

    .line 807
    goto :goto_0
.end method


# virtual methods
.method public addToDownloadedAppsMap(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 828
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 831
    :cond_0
    :goto_0
    return-void

    .line 830
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public auth(Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/openplatform/service/AuthorizeCallback;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 488
    const-string/jumbo v0, ""

    invoke-virtual {p0, p1, p2, v0}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->auth(Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/openplatform/service/AuthorizeCallback;Ljava/lang/String;)V

    .line 489
    return-void
.end method

.method public auth(Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/openplatform/service/AuthorizeCallback;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 492
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;-><init>()V

    .line 493
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setAppId(Ljava/lang/String;)V

    .line 494
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setNeedAuthorize(Z)V

    .line 495
    new-instance v1, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/ApkApp;

    invoke-direct {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/ApkApp;-><init>()V

    .line 496
    invoke-virtual {v1, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->setAppInfo(Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;)V

    .line 497
    invoke-virtual {v1, p3}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->setAuthType(Ljava/lang/String;)V

    .line 498
    invoke-virtual {v1, p1, p2}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->auth(Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/openplatform/service/AuthorizeCallback;)V

    .line 499
    return-void
.end method

.method public authAndLaunch(Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Bundle;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 478
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;-><init>()V

    .line 479
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setAppId(Ljava/lang/String;)V

    .line 480
    invoke-virtual {v0, p2}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setPackageName(Ljava/lang/String;)V

    .line 481
    invoke-virtual {v0, p3}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setNeedAuthorize(Z)V

    .line 482
    new-instance v1, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/ApkApp;

    invoke-direct {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/ApkApp;-><init>()V

    .line 483
    invoke-virtual {v1, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->setAppInfo(Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;)V

    .line 484
    invoke-virtual {v1, p4}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->authAndLaunch(Landroid/os/Bundle;)V

    .line 485
    return-void
.end method

.method public getAppById(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;
    .locals 3
    .parameter

    .prologue
    .line 110
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    .line 118
    :cond_0
    :goto_0
    return-object v0

    .line 113
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->getAppByAppId(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppFactory;->createApp(Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v0

    .line 114
    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {v0, p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->addObserver(Ljava/util/Observer;)V

    .line 116
    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getAppCenterAppsFromLocal()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 606
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 609
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/MyAppDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/MyAppDao;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/MyAppDao;->getAllMyAppIds(I)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->getAppListByIds(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    .line 610
    if-nez v0, :cond_0

    move-object v0, v2

    .line 627
    :goto_0
    return-object v0

    .line 613
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    .line 614
    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 615
    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    .line 616
    invoke-virtual {v1, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->setAppInfo(Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;)V

    .line 617
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 619
    :cond_2
    invoke-static {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppFactory;->createApp(Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v0

    .line 620
    if-eqz v0, :cond_1

    .line 621
    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 622
    invoke-virtual {v0, p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->addObserver(Ljava/util/Observer;)V

    .line 623
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 627
    :cond_3
    invoke-static {v2}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->f(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getAppCenterAppsFromRemote()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;",
            ">;"
        }
    .end annotation

    .prologue
    .line 636
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 651
    return-object v0
.end method

.method public getAppsByPage(II)Ljava/util/List;
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;",
            ">;"
        }
    .end annotation

    .prologue
    .line 662
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Lcom/alipay/mobile/appstoreapp/util/GeneralRequestBuilder;->a(Ljava/util/List;)Lcom/alipay/mobileapp/common/service/facade/app/facade/QueryAppstoreReq;

    move-result-object v0

    .line 664
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/alipay/mobileapp/common/service/facade/app/facade/QueryAppstoreReq;->pre:Z

    .line 665
    iput p1, v0, Lcom/alipay/mobileapp/common/service/facade/app/facade/QueryAppstoreReq;->page:I

    .line 666
    iput p2, v0, Lcom/alipay/mobileapp/common/service/facade/app/facade/QueryAppstoreReq;->pagesize:I

    .line 668
    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->c:Lcom/alipay/mobileapp/common/service/facade/app/facade/MobileAppInfoServiceFacade;

    invoke-interface {v1, v0}, Lcom/alipay/mobileapp/common/service/facade/app/facade/MobileAppInfoServiceFacade;->queryIndependantAppList(Lcom/alipay/mobileapp/common/service/facade/app/facade/QueryAppstoreReq;)Lcom/alipay/mobileapp/common/service/facade/app/facade/QueryAppstoreRes;

    move-result-object v0

    .line 669
    if-eqz v0, :cond_1

    iget v1, v0, Lcom/alipay/mobileapp/common/service/facade/app/facade/QueryAppstoreRes;->resultStatus:I

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_1

    .line 670
    iget-object v0, v0, Lcom/alipay/mobileapp/common/service/facade/app/facade/QueryAppstoreRes;->appList:Ljava/util/List;

    invoke-static {v0}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->d(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 671
    invoke-direct {p0, v0}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a(Ljava/util/List;)V

    .line 673
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 674
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;

    .line 675
    iget-object v3, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a:Ljava/util/Map;

    iget-object v4, v0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->appId:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 676
    iget-object v3, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a:Ljava/util/Map;

    iget-object v0, v0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->appId:Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 681
    :cond_1
    new-instance v1, Lcom/alipay/mobile/framework/service/ext/openplatform/AppStoreException;

    iget v2, v0, Lcom/alipay/mobileapp/common/service/facade/app/facade/QueryAppstoreRes;->resultStatus:I

    iget-object v0, v0, Lcom/alipay/mobileapp/common/service/facade/app/facade/QueryAppstoreRes;->memo:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppStoreException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 679
    :cond_2
    return-object v1
.end method

.method public getHomeAndAppCenterAppsFromRemote()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 688
    invoke-static {}, Lcom/alipay/mobile/appstoreapp/util/GeneralRequestBuilder;->a()Lcom/alipay/mobileapp/common/service/facade/app/facade/QueryMyAppReq;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/alipay/mobileapp/common/service/facade/app/facade/QueryMyAppReq;->appList:Ljava/util/List;

    .line 689
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/alipay/mobileapp/common/service/facade/app/facade/QueryMyAppReq;->pre:Z

    .line 690
    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->c:Lcom/alipay/mobileapp/common/service/facade/app/facade/MobileAppInfoServiceFacade;

    invoke-interface {v1, v0}, Lcom/alipay/mobileapp/common/service/facade/app/facade/MobileAppInfoServiceFacade;->queryFitMyAppOrderedByWeight(Lcom/alipay/mobileapp/common/service/facade/app/facade/QueryMyAppReq;)Lcom/alipay/mobileapp/common/service/facade/app/facade/QueryMyAppRes;

    move-result-object v0

    .line 692
    invoke-static {v0}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a(Lcom/alipay/mobileapp/common/service/facade/app/facade/QueryMyAppRes;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 693
    iget-object v0, v0, Lcom/alipay/mobileapp/common/service/facade/app/facade/QueryMyAppRes;->appList:Ljava/util/List;

    invoke-static {v0}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->d(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 694
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;

    iget-object v3, v0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->appId:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->getAppById(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v0, v0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->appId:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppVersion()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->addOldVersion(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 695
    :cond_1
    invoke-static {v1}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->c(Ljava/util/List;)V

    .line 696
    invoke-direct {p0, v1}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a(Ljava/util/List;)V

    .line 697
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 698
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;

    .line 699
    iget-object v3, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a:Ljava/util/Map;

    iget-object v4, v0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->appId:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 700
    iget-object v3, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a:Ljava/util/Map;

    iget-object v0, v0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->appId:Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 703
    :cond_3
    invoke-static {v2}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->e(Ljava/util/List;)V

    .line 705
    new-instance v0, Ljava/util/Observable;

    invoke-direct {v0}, Ljava/util/Observable;-><init>()V

    new-instance v1, Lcom/alipay/mobile/framework/service/ext/openplatform/MemoryAppsChangeNotify;

    invoke-direct {v1, v5}, Lcom/alipay/mobile/framework/service/ext/openplatform/MemoryAppsChangeNotify;-><init>(I)V

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a(Ljava/util/Observable;Ljava/lang/Object;)V

    .line 708
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a:Ljava/util/Map;

    invoke-static {v0}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a(Ljava/util/Map;)V

    .line 709
    return-object v2

    .line 712
    :cond_4
    new-instance v1, Lcom/alipay/mobile/framework/service/ext/openplatform/AppStoreException;

    iget-object v0, v0, Lcom/alipay/mobileapp/common/service/facade/app/facade/QueryMyAppRes;->memo:Ljava/lang/String;

    invoke-direct {v1, v5, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppStoreException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public getHomeAppsFromLocal()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;",
            ">;"
        }
    .end annotation

    .prologue
    .line 557
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 559
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/MyAppDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/MyAppDao;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/MyAppDao;->getAllMyAppIds(I)Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->getAppListByIds(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    .line 560
    if-nez v0, :cond_0

    move-object v0, v2

    .line 577
    :goto_0
    return-object v0

    .line 563
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    .line 564
    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 565
    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    .line 566
    invoke-virtual {v1, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->setAppInfo(Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;)V

    .line 567
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 569
    :cond_2
    invoke-static {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppFactory;->createApp(Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v0

    .line 570
    if-eqz v0, :cond_1

    .line 571
    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    invoke-virtual {v0, p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->addObserver(Ljava/util/Observer;)V

    .line 573
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 577
    :cond_3
    invoke-static {v2}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->f(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getHomeAppsFromRemote()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;",
            ">;"
        }
    .end annotation

    .prologue
    .line 586
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 601
    return-object v0
.end method

.method public getThirdAppsFromLocal()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;",
            ">;"
        }
    .end annotation

    .prologue
    .line 533
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 534
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/FastLoginAppDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/FastLoginAppDao;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/FastLoginAppDao;->getAllFastLoginIds()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->getAppListByIds(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    .line 535
    if-nez v0, :cond_0

    move-object v0, v2

    .line 552
    :goto_0
    return-object v0

    .line 538
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    .line 539
    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 540
    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    .line 541
    invoke-virtual {v1, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->setAppInfo(Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;)V

    .line 542
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 544
    :cond_2
    invoke-static {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppFactory;->createApp(Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v0

    .line 545
    if-eqz v0, :cond_1

    .line 546
    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    invoke-virtual {v0, p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->addObserver(Ljava/util/Observer;)V

    .line 548
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    move-object v0, v2

    .line 552
    goto :goto_0
.end method

.method public initAndSyncApps()V
    .locals 2

    .prologue
    .line 89
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/mobile/appstoreapp/manager/a;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/appstoreapp/manager/a;-><init>(Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 106
    return-void
.end method

.method public declared-synchronized initConfig()V
    .locals 3

    .prologue
    .line 371
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "APP_STORE_FIRST_TIME_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/info/AppInfo;->getInstance()Lcom/alipay/mobile/common/info/AppInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/info/AppInfo;->getmProductVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 373
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 376
    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 377
    if-eqz v2, :cond_0

    .line 378
    invoke-direct {p0}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a()V

    .line 380
    invoke-direct {p0}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->c()V

    .line 381
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 382
    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 383
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 385
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 386
    monitor-exit p0

    return-void

    .line 371
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isAppInstalledById(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 124
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->getAppById(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v0

    .line 125
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isInstalled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    const/4 v0, 0x1

    .line 127
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 80
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 82
    const-class v1, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    .line 84
    const-class v1, Lcom/alipay/mobileapp/common/service/facade/app/facade/MobileAppInfoServiceFacade;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobileapp/common/service/facade/app/facade/MobileAppInfoServiceFacade;

    iput-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->c:Lcom/alipay/mobileapp/common/service/facade/app/facade/MobileAppInfoServiceFacade;

    .line 86
    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 241
    return-void
.end method

.method public syncAppAndAutoUpdate()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 394
    invoke-static {}, Lcom/alipay/mobile/appstoreapp/util/TimingUtil;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 402
    :goto_0
    return-object v1

    .line 397
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->getHomeAndAppCenterAppsFromRemote()Ljava/util/List;

    .line 398
    invoke-static {}, Lcom/alipay/mobile/appstoreapp/util/TimingUtil;->b()V
    :try_end_0
    .catch Lcom/alipay/mobile/framework/service/ext/openplatform/AppStoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public syncOneAppInfo(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;
    .locals 4
    .parameter

    .prologue
    .line 512
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;

    invoke-direct {v1}, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;-><init>()V

    iput-object p1, v1, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->appId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/alipay/mobile/appstoreapp/util/GeneralRequestBuilder;->a()Lcom/alipay/mobileapp/common/service/facade/app/facade/QueryMyAppReq;

    move-result-object v1

    iput-object v0, v1, Lcom/alipay/mobileapp/common/service/facade/app/facade/QueryMyAppReq;->appList:Ljava/util/List;

    .line 513
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/alipay/mobileapp/common/service/facade/app/facade/QueryMyAppReq;->pre:Z

    .line 514
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->c:Lcom/alipay/mobileapp/common/service/facade/app/facade/MobileAppInfoServiceFacade;

    invoke-interface {v0, v1}, Lcom/alipay/mobileapp/common/service/facade/app/facade/MobileAppInfoServiceFacade;->queryMobileAppInfoByAppList(Lcom/alipay/mobileapp/common/service/facade/app/facade/QueryMyAppReq;)Lcom/alipay/mobileapp/common/service/facade/app/facade/QueryMyAppRes;

    move-result-object v0

    .line 515
    invoke-static {v0}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a(Lcom/alipay/mobileapp/common/service/facade/app/facade/QueryMyAppRes;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 516
    iget-object v0, v0, Lcom/alipay/mobileapp/common/service/facade/app/facade/QueryMyAppRes;->appList:Ljava/util/List;

    invoke-static {v0}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->d(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 517
    invoke-static {v0}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->c(Ljava/util/List;)V

    .line 518
    invoke-direct {p0, v0}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a(Ljava/util/List;)V

    .line 519
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;

    .line 520
    iget-object v2, v0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->appId:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a:Ljava/util/Map;

    iget-object v3, v0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->appId:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 521
    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a:Ljava/util/Map;

    iget-object v0, v0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->appId:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    .line 524
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 527
    :cond_2
    new-instance v1, Lcom/alipay/mobile/framework/service/ext/openplatform/AppStoreException;

    const/4 v2, 0x1

    iget-object v0, v0, Lcom/alipay/mobileapp/common/service/facade/app/facade/QueryMyAppRes;->memo:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppStoreException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 245
    instance-of v0, p2, Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;

    if-eqz v0, :cond_1

    .line 247
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a(Ljava/util/Observable;Ljava/lang/Object;)V

    .line 251
    :cond_0
    :goto_0
    return-void

    .line 248
    :cond_1
    instance-of v0, p2, Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatusChangeNotify;

    if-eqz v0, :cond_0

    .line 249
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->a(Ljava/util/Observable;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public upgradeDownloadedApps()V
    .locals 6

    .prologue
    .line 835
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 836
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 837
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 838
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->getAppById(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v3

    .line 839
    if-eqz v3, :cond_0

    .line 840
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->installApp([Ljava/lang/String;)V

    .line 842
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 844
    :cond_1
    return-void
.end method
