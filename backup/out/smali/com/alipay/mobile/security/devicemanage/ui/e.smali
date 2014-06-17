.class final Lcom/alipay/mobile/security/devicemanage/ui/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobilesecurity/core/model/account/device/QueryAuthedDeviceRes;

.field final synthetic b:Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity_;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity_;Lcom/alipay/mobilesecurity/core/model/account/device/QueryAuthedDeviceRes;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/devicemanage/ui/e;->b:Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity_;

    iput-object p2, p0, Lcom/alipay/mobile/security/devicemanage/ui/e;->a:Lcom/alipay/mobilesecurity/core/model/account/device/QueryAuthedDeviceRes;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/security/devicemanage/ui/e;->b:Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity_;

    iget-object v1, p0, Lcom/alipay/mobile/security/devicemanage/ui/e;->a:Lcom/alipay/mobilesecurity/core/model/account/device/QueryAuthedDeviceRes;

    invoke-static {v0, v1}, Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity_;->a(Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity_;Lcom/alipay/mobilesecurity/core/model/account/device/QueryAuthedDeviceRes;)V

    return-void
.end method
