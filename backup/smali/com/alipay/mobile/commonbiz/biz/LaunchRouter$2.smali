.class Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$2;->a:Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$2;->a:Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;

    invoke-static {v0}, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->c(Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;)Lcom/alipay/mobile/framework/service/ext/security/LocationInfoService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/LocationInfoService;->putCacheLocationInfo()V

    return-void
.end method
