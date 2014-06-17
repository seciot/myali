.class final Lcom/alipay/mobile/about/service/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alipay/mobile/about/service/UpdateServicesImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/about/service/UpdateServicesImpl;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/about/service/h;->b:Lcom/alipay/mobile/about/service/UpdateServicesImpl;

    iput-object p2, p0, Lcom/alipay/mobile/about/service/h;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/about/service/m;->a()Lcom/alipay/mobileapp/common/service/facade/version/model/ClientVersionServiceReq;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/about/service/h;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobileapp/common/service/facade/version/model/ClientVersionServiceReq;->setUserId(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/about/service/h;->b:Lcom/alipay/mobile/about/service/UpdateServicesImpl;

    #getter for: Lcom/alipay/mobile/about/service/UpdateServicesImpl;->c:Lcom/alipay/mobileapp/common/service/facade/version/ClientVersionServiceFacade;
    invoke-static {v1}, Lcom/alipay/mobile/about/service/UpdateServicesImpl;->access$000(Lcom/alipay/mobile/about/service/UpdateServicesImpl;)Lcom/alipay/mobileapp/common/service/facade/version/ClientVersionServiceFacade;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/alipay/mobileapp/common/service/facade/version/ClientVersionServiceFacade;->versionUpdateCheck(Lcom/alipay/mobileapp/common/service/facade/version/model/ClientVersionServiceReq;)Lcom/alipay/mobileapp/common/service/facade/version/model/ClientUpdateCheckRes;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/about/service/h;->b:Lcom/alipay/mobile/about/service/UpdateServicesImpl;

    #calls: Lcom/alipay/mobile/about/service/UpdateServicesImpl;->b(Lcom/alipay/mobileapp/common/service/facade/version/model/ClientUpdateCheckRes;)V
    invoke-static {v1, v0}, Lcom/alipay/mobile/about/service/UpdateServicesImpl;->access$100(Lcom/alipay/mobile/about/service/UpdateServicesImpl;Lcom/alipay/mobileapp/common/service/facade/version/model/ClientUpdateCheckRes;)V

    iget-object v0, p0, Lcom/alipay/mobile/about/service/h;->b:Lcom/alipay/mobile/about/service/UpdateServicesImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/about/service/UpdateServicesImpl;->updateImmediately()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u5347\u7ea7\u5931\u8d25(checkUpdate)\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0
.end method
