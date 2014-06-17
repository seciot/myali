.class final Lcom/alipay/mobile/security/devicemanage/ui/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity_;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity_;Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/devicemanage/ui/f;->c:Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity_;

    iput-object p2, p0, Lcom/alipay/mobile/security/devicemanage/ui/f;->a:Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;

    iput-object p3, p0, Lcom/alipay/mobile/security/devicemanage/ui/f;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/security/devicemanage/ui/f;->c:Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity_;

    iget-object v1, p0, Lcom/alipay/mobile/security/devicemanage/ui/f;->a:Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;

    iget-object v2, p0, Lcom/alipay/mobile/security/devicemanage/ui/f;->b:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity_;->a(Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity_;Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;Ljava/util/List;)V

    return-void
.end method
