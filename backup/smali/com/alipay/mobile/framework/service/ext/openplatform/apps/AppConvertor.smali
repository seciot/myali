.class public Lcom/alipay/mobile/framework/service/ext/openplatform/apps/AppConvertor;
.super Ljava/lang/Object;
.source "AppConvertor.java"


# direct methods
.method public static final a(Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;)Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;
    .locals 2
    .parameter

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 62
    :goto_0
    return-object v0

    .line 26
    :cond_0
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;-><init>()V

    .line 28
    iget-object v1, p0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setAppId(Ljava/lang/String;)V

    .line 29
    iget-object v1, p0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setName(Ljava/lang/String;)V

    .line 30
    iget-object v1, p0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setVersion(Ljava/lang/String;)V

    .line 31
    iget-object v1, p0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->slogan:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setSlogan(Ljava/lang/String;)V

    .line 32
    iget-object v1, p0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->desc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setDesc(Ljava/lang/String;)V

    .line 33
    iget v1, p0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->size:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setSize(I)V

    .line 34
    iget-object v1, p0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->installerType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setInstallerType(Ljava/lang/String;)V

    .line 35
    iget-boolean v1, p0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->display:Z

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setDisplay(Z)V

    .line 36
    iget-boolean v1, p0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->canDelete:Z

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setCanDelete(Z)V

    .line 37
    iget-boolean v1, p0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->alipayApp:Z

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setAlipayApp(Z)V

    .line 38
    iget-object v1, p0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setPackageName(Ljava/lang/String;)V

    .line 39
    iget-object v1, p0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->schemeUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setSchemeUri(Ljava/lang/String;)V

    .line 40
    iget-object v1, p0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->iconUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setIconUrl(Ljava/lang/String;)V

    .line 41
    iget-object v1, p0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->downloadUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setDownloadUrl(Ljava/lang/String;)V

    .line 42
    iget-object v1, p0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->tipsType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setTipsType(Ljava/lang/String;)V

    .line 43
    iget-boolean v1, p0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->recommend:Z

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setRecommend(Z)V

    .line 44
    iget-object v1, p0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->labelContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setLabelContent(Ljava/lang/String;)V

    .line 45
    iget-object v1, p0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->minSupportAppVersionCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setMinSupportAppVersionCode(Ljava/lang/String;)V

    .line 47
    iget-object v1, p0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->minSupportClientVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setMinSupportClientVersion(Ljava/lang/String;)V

    .line 49
    iget-object v1, p0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->minSupportOsVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setMinSupportOsVersion(Ljava/lang/String;)V

    .line 51
    iget-object v1, p0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->minSupportSdkVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setMinSupportSdkVersion(Ljava/lang/String;)V

    .line 53
    iget-object v1, p0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setStatus(Ljava/lang/String;)V

    .line 54
    iget-object v1, p0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->autoStatus:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setAutoStatus(Ljava/lang/String;)V

    .line 55
    iget-boolean v1, p0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->needAuthorize:Z

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setNeedAuthorize(Z)V

    .line 56
    iget-boolean v1, p0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->autoAuthorize:Z

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setAutoAuthorize(Z)V

    .line 57
    iget v1, p0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->rank:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setRank(I)V

    .line 58
    iget-object v1, p0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->md5:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setMd5(Ljava/lang/String;)V

    .line 59
    iget-object v1, p0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->extra:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setExtra(Ljava/util/Map;)V

    .line 60
    iget-object v1, p0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->widgetId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setWidgetId(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static final a(Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;)Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;
    .locals 2
    .parameter

    .prologue
    .line 73
    if-nez p0, :cond_0

    .line 74
    const/4 v0, 0x0

    .line 112
    :goto_0
    return-object v0

    .line 76
    :cond_0
    new-instance v0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;

    invoke-direct {v0}, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;-><init>()V

    .line 78
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getAppId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->appId:Ljava/lang/String;

    .line 79
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->name:Ljava/lang/String;

    .line 80
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getVersion()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->version:Ljava/lang/String;

    .line 81
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getSlogan()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->slogan:Ljava/lang/String;

    .line 82
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getDesc()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->desc:Ljava/lang/String;

    .line 83
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getSize()I

    move-result v1

    iput v1, v0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->size:I

    .line 84
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getInstallerType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->installerType:Ljava/lang/String;

    .line 85
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->isDisplay()Z

    move-result v1

    iput-boolean v1, v0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->display:Z

    .line 86
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->isCanDelete()Z

    move-result v1

    iput-boolean v1, v0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->canDelete:Z

    .line 87
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->isAlipayApp()Z

    move-result v1

    iput-boolean v1, v0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->alipayApp:Z

    .line 88
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->packageName:Ljava/lang/String;

    .line 89
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getSchemeUri()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->schemeUri:Ljava/lang/String;

    .line 90
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getIconUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->iconUrl:Ljava/lang/String;

    .line 91
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getDownloadUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->downloadUrl:Ljava/lang/String;

    .line 92
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getTipsType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->tipsType:Ljava/lang/String;

    .line 93
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->isRecommend()Z

    move-result v1

    iput-boolean v1, v0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->recommend:Z

    .line 94
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getLabelContent()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->labelContent:Ljava/lang/String;

    .line 95
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getMinSupportAppVersionCode()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->minSupportAppVersionCode:Ljava/lang/String;

    .line 97
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getMinSupportClientVersion()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->minSupportClientVersion:Ljava/lang/String;

    .line 99
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getMinSupportOsVersion()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->minSupportOsVersion:Ljava/lang/String;

    .line 101
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getMinSupportSdkVersion()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->minSupportSdkVersion:Ljava/lang/String;

    .line 103
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getStatus()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->status:Ljava/lang/String;

    .line 104
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getAutoStatus()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->autoStatus:Ljava/lang/String;

    .line 105
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->isNeedAuthorize()Z

    move-result v1

    iput-boolean v1, v0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->needAuthorize:Z

    .line 106
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->isAutoAuthorize()Z

    move-result v1

    iput-boolean v1, v0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->autoAuthorize:Z

    .line 107
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getRank()I

    move-result v1

    iput v1, v0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->rank:I

    .line 108
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getMd5()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->md5:Ljava/lang/String;

    .line 109
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getExtra()Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->extra:Ljava/util/Map;

    .line 110
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getWidgetId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->widgetId:Ljava/lang/String;

    goto/16 :goto_0
.end method
