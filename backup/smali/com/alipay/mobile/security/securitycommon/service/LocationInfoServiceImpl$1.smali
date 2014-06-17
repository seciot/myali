.class Lcom/alipay/mobile/security/securitycommon/service/LocationInfoServiceImpl$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/common/lbs/LBSLocationListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/framework/service/ext/security/bean/LocationInfo;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/alipay/mobile/security/securitycommon/service/LocationInfoServiceImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/securitycommon/service/LocationInfoServiceImpl;Lcom/alipay/mobile/framework/service/ext/security/bean/LocationInfo;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/securitycommon/service/LocationInfoServiceImpl$1;->c:Lcom/alipay/mobile/security/securitycommon/service/LocationInfoServiceImpl;

    iput-object p2, p0, Lcom/alipay/mobile/security/securitycommon/service/LocationInfoServiceImpl$1;->a:Lcom/alipay/mobile/framework/service/ext/security/bean/LocationInfo;

    iput-object p3, p0, Lcom/alipay/mobile/security/securitycommon/service/LocationInfoServiceImpl$1;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationUpdate(Lcom/alipay/mobile/common/lbs/LBSLocation;)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/security/securitycommon/service/LocationInfoServiceImpl$1;->c:Lcom/alipay/mobile/security/securitycommon/service/LocationInfoServiceImpl;

    const/4 v1, 0x1

    #setter for: Lcom/alipay/mobile/security/securitycommon/service/LocationInfoServiceImpl;->b:Z
    invoke-static {v0, v1}, Lcom/alipay/mobile/security/securitycommon/service/LocationInfoServiceImpl;->access$002(Lcom/alipay/mobile/security/securitycommon/service/LocationInfoServiceImpl;Z)Z

    iget-object v0, p0, Lcom/alipay/mobile/security/securitycommon/service/LocationInfoServiceImpl$1;->c:Lcom/alipay/mobile/security/securitycommon/service/LocationInfoServiceImpl;

    iget-object v1, p0, Lcom/alipay/mobile/security/securitycommon/service/LocationInfoServiceImpl$1;->a:Lcom/alipay/mobile/framework/service/ext/security/bean/LocationInfo;

    iget-object v2, p0, Lcom/alipay/mobile/security/securitycommon/service/LocationInfoServiceImpl$1;->b:Landroid/content/Context;

    #calls: Lcom/alipay/mobile/security/securitycommon/service/LocationInfoServiceImpl;->a(Lcom/alipay/mobile/framework/service/ext/security/bean/LocationInfo;Landroid/content/Context;Lcom/alipay/mobile/common/lbs/LBSLocation;)V
    invoke-static {v0, v1, v2, p1}, Lcom/alipay/mobile/security/securitycommon/service/LocationInfoServiceImpl;->access$100(Lcom/alipay/mobile/security/securitycommon/service/LocationInfoServiceImpl;Lcom/alipay/mobile/framework/service/ext/security/bean/LocationInfo;Landroid/content/Context;Lcom/alipay/mobile/common/lbs/LBSLocation;)V

    const-string/jumbo v1, "LocationInfoServiceImpl"

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "LocationInfoServiceImpl"

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{[info=getLocationInfo],[msg=cellIdInfo:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/security/securitycommon/service/LocationInfoServiceImpl$1;->a:Lcom/alipay/mobile/framework/service/ext/security/bean/LocationInfo;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/LocationInfo;->getCellId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " &&latitude:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/security/securitycommon/service/LocationInfoServiceImpl$1;->a:Lcom/alipay/mobile/framework/service/ext/security/bean/LocationInfo;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/LocationInfo;->getLatitude()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " &&longitude:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/security/securitycommon/service/LocationInfoServiceImpl$1;->a:Lcom/alipay/mobile/framework/service/ext/security/bean/LocationInfo;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/LocationInfo;->getLongitude()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " &&mac:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/security/securitycommon/service/LocationInfoServiceImpl$1;->a:Lcom/alipay/mobile/framework/service/ext/security/bean/LocationInfo;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/LocationInfo;->getMac()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->getInstance()Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/security/securitycommon/service/LocationInfoServiceImpl$1;->b:Landroid/content/Context;

    invoke-virtual {v0, v1, p0}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->removeUpdates(Landroid/content/Context;Lcom/alipay/mobile/common/lbs/LBSLocationListener;)V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
