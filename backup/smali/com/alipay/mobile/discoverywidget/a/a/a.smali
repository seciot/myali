.class public final Lcom/alipay/mobile/discoverywidget/a/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/discoverywidget/a/b;


# instance fields
.field a:Lcom/alipay/kabaoprod/biz/mwallet/pass/manager/PassManager;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/framework/MicroApplicationContext;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    const-class v1, Lcom/alipay/kabaoprod/biz/mwallet/pass/manager/PassManager;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/kabaoprod/biz/mwallet/pass/manager/PassManager;

    iput-object v0, p0, Lcom/alipay/mobile/discoverywidget/a/a/a;->a:Lcom/alipay/kabaoprod/biz/mwallet/pass/manager/PassManager;

    return-void
.end method


# virtual methods
.method public final a(Lcom/alipay/kabaoprod/biz/mwallet/pass/request/HomePageWidgetReq;)Lcom/alipay/kabaoprod/biz/mwallet/pass/result/IndexWidgetResult;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/discoverywidget/a/a/a;->a:Lcom/alipay/kabaoprod/biz/mwallet/pass/manager/PassManager;

    invoke-interface {v0, p1}, Lcom/alipay/kabaoprod/biz/mwallet/pass/manager/PassManager;->getHomePageWidgetInfo(Lcom/alipay/kabaoprod/biz/mwallet/pass/request/HomePageWidgetReq;)Lcom/alipay/kabaoprod/biz/mwallet/pass/result/IndexWidgetResult;

    move-result-object v0

    return-object v0
.end method
