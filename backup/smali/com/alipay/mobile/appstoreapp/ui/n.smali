.class final Lcom/alipay/mobile/appstoreapp/ui/n;
.super Ljava/lang/Thread;
.source "AppLaunchFromShortcutActivityImpl.java"


# instance fields
.field final synthetic a:Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;)V
    .locals 0
    .parameter

    .prologue
    .line 134
    iput-object p1, p0, Lcom/alipay/mobile/appstoreapp/ui/n;->a:Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    const/16 v4, 0x3e8

    .line 137
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/n;->a:Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;

    #getter for: Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;->thirdPartyAuthorizeService:Lcom/alipay/mobile/framework/service/ext/openplatform/service/ThirdPartyAuthorizeService;
    invoke-static {v0}, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;->access$800(Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;)Lcom/alipay/mobile/framework/service/ext/openplatform/service/ThirdPartyAuthorizeService;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/ui/n;->a:Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;

    #getter for: Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;->mUserId:Ljava/lang/String;
    invoke-static {v1}, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;->access$500(Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/appstoreapp/ui/n;->a:Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;

    #getter for: Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;->mAppId:Ljava/lang/String;
    invoke-static {v2}, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;->access$600(Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/appstoreapp/ui/n;->a:Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;

    #getter for: Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;->mTid:Ljava/lang/String;
    invoke-static {v3}, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;->access$700(Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/service/ext/openplatform/service/ThirdPartyAuthorizeService;->getAuthStatusValidTid(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobileapp/core/model/app/MobileAppAuthStatusVO;

    move-result-object v0

    .line 139
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/alipay/mobileapp/core/model/app/MobileAppAuthStatusVO;->isSignStatus()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 140
    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/ui/n;->a:Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;

    invoke-virtual {v0}, Lcom/alipay/mobileapp/core/model/app/MobileAppAuthStatusVO;->getAuthCode()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x3e8

    #calls: Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;->launchApp(Ljava/lang/String;I)V
    invoke-static {v1, v0, v2}, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;->access$200(Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;Ljava/lang/String;I)V

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {v0}, Lcom/alipay/mobileapp/core/model/app/MobileAppAuthStatusVO;->getResultCode()I

    move-result v1

    if-ne v1, v4, :cond_3

    .line 143
    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/ui/n;->a:Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;

    #calls: Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;->toAuth(Lcom/alipay/mobileapp/core/model/app/MobileAppAuthStatusVO;)V
    invoke-static {v1, v0}, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;->access$900(Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;Lcom/alipay/mobileapp/core/model/app/MobileAppAuthStatusVO;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 150
    :catch_0
    move-exception v0

    .line 151
    const/16 v1, -0x66

    .line 152
    instance-of v2, v0, Lcom/alipay/mobile/common/rpc/RpcException;

    if-eqz v2, :cond_4

    .line 153
    check-cast v0, Lcom/alipay/mobile/common/rpc/RpcException;

    .line 154
    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->getCode()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->getCode()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_2

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->getCode()I

    move-result v2

    const/4 v3, 0x7

    if-eq v2, v3, :cond_2

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->getCode()I

    move-result v0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_4

    .line 158
    :cond_2
    const/16 v0, -0x64

    .line 159
    invoke-static {}, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;->access$1000()Ljava/lang/String;

    .line 163
    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/ui/n;->a:Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;

    iget-object v2, p0, Lcom/alipay/mobile/appstoreapp/ui/n;->a:Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;

    #getter for: Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;->access$100(Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;)Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/appstoreapp/ui/n;->a:Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;

    const-string/jumbo v4, "string"

    const-string/jumbo v5, "auth_network_error"

    #calls: Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v3, v4, v5}, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;->access$300(Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;->showToastCenter(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;->access$400(Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;Ljava/lang/String;)V

    .line 166
    :goto_1
    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/ui/n;->a:Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;

    const-string/jumbo v2, ""

    #calls: Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;->launchApp(Ljava/lang/String;I)V
    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;->access$200(Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;Ljava/lang/String;I)V

    goto :goto_0

    .line 146
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/n;->a:Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;

    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/ui/n;->a:Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;

    #getter for: Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;->access$100(Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/appstoreapp/ui/n;->a:Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;

    const-string/jumbo v3, "string"

    const-string/jumbo v4, "auth_fail"

    #calls: Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v2, v3, v4}, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;->access$300(Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;->showToastCenter(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;->access$400(Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/n;->a:Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;

    const-string/jumbo v1, ""

    const/16 v2, -0x65

    #calls: Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;->launchApp(Ljava/lang/String;I)V
    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;->access$200(Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_4
    move v0, v1

    goto :goto_1
.end method
