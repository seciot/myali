.class public abstract Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;
.super Lcom/alipay/mobile/framework/service/ext/ExternalService;
.source "AppManageService.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AppManageService"


# instance fields
.field protected observers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Observer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/ExternalService;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;->observers:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addObserver(Ljava/util/Observer;)V
    .locals 2
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;->observers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u6dfb\u52a0\u76d1\u542c\u8005"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;->observers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    :cond_0
    return-void
.end method

.method public abstract addToDownloadedAppsMap(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract auth(Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/openplatform/service/AuthorizeCallback;)V
.end method

.method public abstract auth(Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/openplatform/service/AuthorizeCallback;Ljava/lang/String;)V
.end method

.method public abstract authAndLaunch(Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Bundle;)V
.end method

.method public abstract getAppById(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;
.end method

.method public abstract getAppCenterAppsFromLocal()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAppCenterAppsFromRemote()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAppsByPage(II)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getHomeAndAppCenterAppsFromRemote()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getHomeAppsFromLocal()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getHomeAppsFromRemote()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getThirdAppsFromLocal()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;",
            ">;"
        }
    .end annotation
.end method

.method public abstract initAndSyncApps()V
.end method

.method public abstract initConfig()V
.end method

.method public abstract isAppInstalledById(Ljava/lang/String;)Z
.end method

.method public removeObserver(Ljava/util/Observer;)V
    .locals 2
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;->observers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u5220\u9664\u76d1\u542c\u8005"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;->observers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 54
    :cond_0
    return-void
.end method

.method public abstract syncAppAndAutoUpdate()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;",
            ">;"
        }
    .end annotation
.end method

.method public abstract syncOneAppInfo(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;
.end method

.method public abstract upgradeDownloadedApps()V
.end method
