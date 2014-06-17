.class public Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;
.super Ljava/lang/Object;
.source "AppEntity.java"


# static fields
.field public static final COL_APPID:Ljava/lang/String; = "appId"


# instance fields
.field private alipayApp:Z
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private appId:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        index = true
        unique = true
    .end annotation
.end field

.field private autoStatus:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private canDelete:Z
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private desc:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private display:Z
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private downloadUrl:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private extra:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private iconUrl:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private id:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        generatedId = true
    .end annotation
.end field

.field private installerType:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private isRecommend:Z
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private labelContent:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private md5:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private minSupportAppVersionCode:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private minSupportClientVersion:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private minSupportOsVersion:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private minSupportSdkVersion:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private needAuth:Z
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private needAutoAuth:Z
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private packageName:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private rank:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private schemeUri:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private size:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private slogan:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private status:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private tipsType:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private version:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private widgetId:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 453
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->isRecommend:Z

    .line 160
    iput-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->needAuth:Z

    .line 165
    iput-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->needAutoAuth:Z

    .line 170
    iput v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->rank:I

    .line 453
    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 467
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->isRecommend:Z

    .line 160
    iput-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->needAuth:Z

    .line 165
    iput-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->needAutoAuth:Z

    .line 170
    iput v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->rank:I

    .line 468
    iput-boolean p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->alipayApp:Z

    .line 469
    iput-object p2, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->appId:Ljava/lang/String;

    .line 470
    iput-object p3, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->desc:Ljava/lang/String;

    .line 471
    iput-boolean p4, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->display:Z

    .line 472
    iput-object p5, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->downloadUrl:Ljava/lang/String;

    .line 473
    iput-object p6, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->iconUrl:Ljava/lang/String;

    .line 474
    iput-object p7, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->installerType:Ljava/lang/String;

    .line 475
    iput-object p8, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->name:Ljava/lang/String;

    .line 476
    iput p9, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->size:I

    .line 477
    iput-object p10, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->slogan:Ljava/lang/String;

    .line 478
    iput-object p11, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->status:Ljava/lang/String;

    .line 479
    iput-object p12, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->version:Ljava/lang/String;

    .line 480
    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 495
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->isRecommend:Z

    .line 160
    iput-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->needAuth:Z

    .line 165
    iput-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->needAutoAuth:Z

    .line 170
    iput v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->rank:I

    .line 496
    iput-boolean p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->alipayApp:Z

    .line 497
    iput-object p2, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->appId:Ljava/lang/String;

    .line 498
    iput-object p3, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->desc:Ljava/lang/String;

    .line 499
    iput-boolean p4, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->display:Z

    .line 500
    iput-object p5, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->downloadUrl:Ljava/lang/String;

    .line 501
    iput-object p6, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->iconUrl:Ljava/lang/String;

    .line 502
    iput-object p7, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->installerType:Ljava/lang/String;

    .line 503
    iput-object p8, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->name:Ljava/lang/String;

    .line 504
    iput p9, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->size:I

    .line 505
    iput-object p10, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->slogan:Ljava/lang/String;

    .line 506
    iput-object p11, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->status:Ljava/lang/String;

    .line 507
    iput-object p12, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->version:Ljava/lang/String;

    .line 509
    iput-object p13, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->packageName:Ljava/lang/String;

    .line 510
    return-void
.end method


# virtual methods
.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getAutoStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->autoStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->downloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getExtra()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 413
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 414
    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->extra:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string/jumbo v1, ""

    iget-object v2, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->extra:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 415
    const/4 v2, 0x0

    .line 417
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->extra:Ljava/lang/String;

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 420
    :goto_0
    if-eqz v1, :cond_0

    .line 421
    invoke-static {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppUtils;->jsonToMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v0

    .line 423
    :cond_0
    return-object v0

    :catch_0
    move-exception v1

    move-object v1, v2

    goto :goto_0
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->iconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 189
    iget v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->id:I

    return v0
.end method

.method public getInstallerType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->installerType:Ljava/lang/String;

    return-object v0
.end method

.method public getLabelContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->labelContent:Ljava/lang/String;

    return-object v0
.end method

.method public getMd5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->md5:Ljava/lang/String;

    return-object v0
.end method

.method public getMinSupportAppVersionCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->minSupportAppVersionCode:Ljava/lang/String;

    return-object v0
.end method

.method public getMinSupportClientVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->minSupportClientVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getMinSupportOsVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->minSupportOsVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getMinSupportSdkVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->minSupportSdkVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getRank()I
    .locals 1

    .prologue
    .line 397
    iget v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->rank:I

    return v0
.end method

.method public getSchemeUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->schemeUri:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 237
    iget v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->size:I

    return v0
.end method

.method public getSlogan()Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->slogan:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getTipsType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->tipsType:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->version:Ljava/lang/String;

    return-object v0
.end method

.method public getWidgetId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->widgetId:Ljava/lang/String;

    return-object v0
.end method

.method public isAlipayApp()Z
    .locals 1

    .prologue
    .line 269
    iget-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->alipayApp:Z

    return v0
.end method

.method public isAutoAuthorize()Z
    .locals 1

    .prologue
    .line 389
    iget-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->needAutoAuth:Z

    return v0
.end method

.method public isCanDelete()Z
    .locals 1

    .prologue
    .line 261
    iget-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->canDelete:Z

    return v0
.end method

.method public isDisplay()Z
    .locals 1

    .prologue
    .line 253
    iget-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->display:Z

    return v0
.end method

.method public isNeedAuthorize()Z
    .locals 1

    .prologue
    .line 381
    iget-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->needAuth:Z

    return v0
.end method

.method public isRecommend()Z
    .locals 1

    .prologue
    .line 317
    iget-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->isRecommend:Z

    return v0
.end method

.method public setAlipayApp(Z)V
    .locals 0
    .parameter

    .prologue
    .line 273
    iput-boolean p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->alipayApp:Z

    .line 274
    return-void
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 201
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->appId:Ljava/lang/String;

    .line 202
    return-void
.end method

.method public setAutoAuthorize(Z)V
    .locals 0
    .parameter

    .prologue
    .line 393
    iput-boolean p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->needAutoAuth:Z

    .line 394
    return-void
.end method

.method public setAutoStatus(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 377
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->autoStatus:Ljava/lang/String;

    .line 378
    return-void
.end method

.method public setCanDelete(Z)V
    .locals 0
    .parameter

    .prologue
    .line 265
    iput-boolean p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->canDelete:Z

    .line 266
    return-void
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 233
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->desc:Ljava/lang/String;

    .line 234
    return-void
.end method

.method public setDisplay(Z)V
    .locals 0
    .parameter

    .prologue
    .line 257
    iput-boolean p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->display:Z

    .line 258
    return-void
.end method

.method public setDownloadUrl(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 305
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->downloadUrl:Ljava/lang/String;

    .line 306
    return-void
.end method

.method public setExtra(Ljava/util/Map;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 427
    if-eqz p1, :cond_0

    .line 428
    invoke-static {p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppUtils;->mapToJson(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->extra:Ljava/lang/String;

    .line 430
    :cond_0
    return-void
.end method

.method public setIconUrl(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 297
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->iconUrl:Ljava/lang/String;

    .line 298
    return-void
.end method

.method public setId(I)V
    .locals 0
    .parameter

    .prologue
    .line 193
    iput p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->id:I

    .line 194
    return-void
.end method

.method public setInstallerType(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 249
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->installerType:Ljava/lang/String;

    .line 250
    return-void
.end method

.method public setLabelContent(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 329
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->labelContent:Ljava/lang/String;

    .line 330
    return-void
.end method

.method public setMd5(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 409
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->md5:Ljava/lang/String;

    .line 410
    return-void
.end method

.method public setMinSupportAppVersionCode(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 353
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->minSupportAppVersionCode:Ljava/lang/String;

    .line 354
    return-void
.end method

.method public setMinSupportClientVersion(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 361
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->minSupportClientVersion:Ljava/lang/String;

    .line 362
    return-void
.end method

.method public setMinSupportOsVersion(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 337
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->minSupportOsVersion:Ljava/lang/String;

    .line 338
    return-void
.end method

.method public setMinSupportSdkVersion(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 345
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->minSupportSdkVersion:Ljava/lang/String;

    .line 346
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 209
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->name:Ljava/lang/String;

    .line 210
    return-void
.end method

.method public setNeedAuthorize(Z)V
    .locals 0
    .parameter

    .prologue
    .line 385
    iput-boolean p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->needAuth:Z

    .line 386
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 281
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->packageName:Ljava/lang/String;

    .line 282
    return-void
.end method

.method public setRank(I)V
    .locals 0
    .parameter

    .prologue
    .line 401
    iput p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->rank:I

    .line 402
    return-void
.end method

.method public setRecommend(Z)V
    .locals 0
    .parameter

    .prologue
    .line 321
    iput-boolean p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->isRecommend:Z

    .line 322
    return-void
.end method

.method public setSchemeUri(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 289
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->schemeUri:Ljava/lang/String;

    .line 290
    return-void
.end method

.method public setSize(I)V
    .locals 0
    .parameter

    .prologue
    .line 241
    iput p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->size:I

    .line 242
    return-void
.end method

.method public setSlogan(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 225
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->slogan:Ljava/lang/String;

    .line 226
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 369
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->status:Ljava/lang/String;

    .line 370
    return-void
.end method

.method public setTipsType(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 313
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->tipsType:Ljava/lang/String;

    .line 314
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 217
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->version:Ljava/lang/String;

    .line 218
    return-void
.end method

.method public setWidgetId(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 437
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->widgetId:Ljava/lang/String;

    .line 438
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 442
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 443
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "appId:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->appId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 444
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "name:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 445
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "installerType:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->installerType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 446
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "needAuth:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->needAuth:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 447
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
