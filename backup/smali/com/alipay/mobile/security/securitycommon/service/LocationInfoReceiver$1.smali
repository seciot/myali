.class Lcom/alipay/mobile/security/securitycommon/service/LocationInfoReceiver$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/securitycommon/service/LocationInfoReceiver;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/securitycommon/service/LocationInfoReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/securitycommon/service/LocationInfoReceiver$1;->a:Lcom/alipay/mobile/security/securitycommon/service/LocationInfoReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/securitycommon/service/LocationInfoReceiver$1;->a:Lcom/alipay/mobile/security/securitycommon/service/LocationInfoReceiver;

    invoke-static {v0}, Lcom/alipay/mobile/security/securitycommon/service/LocationInfoReceiver;->a(Lcom/alipay/mobile/security/securitycommon/service/LocationInfoReceiver;)Lcom/alipay/mobile/framework/service/ext/security/LocationInfoService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/LocationInfoService;->putCacheLocationInfo()V

    return-void
.end method
