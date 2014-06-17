.class final Lcom/alipay/android/widget/security/service/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;


# direct methods
.method constructor <init>(Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/service/d;->b:Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;

    iput-object p2, p0, Lcom/alipay/android/widget/security/service/d;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/android/widget/security/service/d;->b:Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;

    iget-object v0, v0, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->c:Lcom/alipay/mobile/framework/service/ext/security/DeviceService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widget/security/service/d;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widget/security/service/d;->b:Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;

    iget-object v0, v0, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->c:Lcom/alipay/mobile/framework/service/ext/security/DeviceService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/DeviceService;->queryDeviceInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/DeviceInfoBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/DeviceInfoBean;->getWalletTid()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "walletTid="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/android/widget/security/service/d;->b:Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;

    iget-object v1, v1, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->c:Lcom/alipay/mobile/framework/service/ext/security/DeviceService;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/DeviceService;->queryCertification()Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;

    move-result-object v1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/common/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getTid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/widget/security/service/d;->b:Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;

    #getter for: Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->i:Lcom/alipay/android/widget/security/a/a;
    invoke-static {v0}, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->access$200(Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;)Lcom/alipay/android/widget/security/a/a;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/android/widget/security/service/d;->a:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/widget/security/a/a;->a(Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;Ljava/util/List;)Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/widget/security/service/d;->b:Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;

    invoke-virtual {v1, v0}, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->handleUpdateLoginResult(Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;)V

    goto :goto_0
.end method
