.class public Lcom/alipay/mobile/framework/service/ext/openplatform/AppFactory;
.super Ljava/lang/Object;
.source "AppFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    return-void
.end method

.method private static checkApp(Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;)Z
    .locals 2
    .parameter

    .prologue
    .line 121
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getInstallerType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getInstallerType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getAppId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 123
    :cond_0
    const/4 v0, 0x0

    .line 125
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static checkApp(Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;)Z
    .locals 2
    .parameter

    .prologue
    .line 134
    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->installerType:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string/jumbo v0, ""

    iget-object v1, p0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->installerType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->appId:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 136
    :cond_0
    const/4 v0, 0x0

    .line 138
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static createApp(Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 23
    .line 24
    invoke-static {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppFactory;->checkApp(Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 64
    :cond_0
    :goto_0
    return-object v0

    .line 28
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getInstallerType()Ljava/lang/String;

    move-result-object v1

    .line 29
    invoke-static {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->getEnum(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    move-result-object v1

    .line 31
    if-eqz v1, :cond_0

    .line 34
    sget-object v2, Lcom/alipay/mobile/framework/service/ext/openplatform/a;->a:[I

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 55
    :goto_1
    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {v0, p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->setAppInfo(Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;)V

    goto :goto_0

    .line 36
    :pswitch_0
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/NativeApp;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/NativeApp;-><init>()V

    goto :goto_1

    .line 39
    :pswitch_1
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/WebApp;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/WebApp;-><init>()V

    goto :goto_1

    .line 42
    :pswitch_2
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/ApkApp;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/ApkApp;-><init>()V

    goto :goto_1

    .line 45
    :pswitch_3
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/ExpApp;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/ExpApp;-><init>()V

    goto :goto_1

    .line 48
    :pswitch_4
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/AndroidApp;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/AndroidApp;-><init>()V

    goto :goto_1

    .line 51
    :pswitch_5
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/InnerApp;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/InnerApp;-><init>()V

    goto :goto_1

    .line 54
    :pswitch_6
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/H5App;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/H5App;-><init>()V

    goto :goto_1

    .line 34
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static createApp(Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 74
    .line 75
    invoke-static {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppFactory;->checkApp(Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 112
    :cond_0
    :goto_0
    return-object v0

    .line 78
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;->installerType:Ljava/lang/String;

    .line 79
    invoke-static {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->getEnum(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    move-result-object v1

    .line 81
    if-eqz v1, :cond_0

    .line 84
    sget-object v2, Lcom/alipay/mobile/framework/service/ext/openplatform/a;->a:[I

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 105
    :goto_1
    if-eqz v0, :cond_0

    .line 110
    invoke-static {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/AppConvertor;->a(Lcom/alipay/mobileapp/core/model/app/MobileAppInfoVO;)Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->setAppInfo(Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;)V

    goto :goto_0

    .line 86
    :pswitch_0
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/NativeApp;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/NativeApp;-><init>()V

    goto :goto_1

    .line 89
    :pswitch_1
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/WebApp;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/WebApp;-><init>()V

    goto :goto_1

    .line 92
    :pswitch_2
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/ApkApp;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/ApkApp;-><init>()V

    goto :goto_1

    .line 95
    :pswitch_3
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/ExpApp;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/ExpApp;-><init>()V

    goto :goto_1

    .line 98
    :pswitch_4
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/AndroidApp;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/AndroidApp;-><init>()V

    goto :goto_1

    .line 101
    :pswitch_5
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/InnerApp;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/InnerApp;-><init>()V

    goto :goto_1

    .line 104
    :pswitch_6
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/H5App;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/H5App;-><init>()V

    goto :goto_1

    .line 84
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
