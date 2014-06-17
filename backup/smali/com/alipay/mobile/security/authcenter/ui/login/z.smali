.class final Lcom/alipay/mobile/security/authcenter/ui/login/z;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alipay/mobileapp/biz/rpc/smscode/vo/VerifySmsAndDeviceRes;

.field final synthetic c:Lcom/alipay/mobile/security/authcenter/ui/login/MobileInputFragment_;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/authcenter/ui/login/MobileInputFragment_;Ljava/lang/String;Lcom/alipay/mobileapp/biz/rpc/smscode/vo/VerifySmsAndDeviceRes;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/authcenter/ui/login/z;->c:Lcom/alipay/mobile/security/authcenter/ui/login/MobileInputFragment_;

    iput-object p2, p0, Lcom/alipay/mobile/security/authcenter/ui/login/z;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/security/authcenter/ui/login/z;->b:Lcom/alipay/mobileapp/biz/rpc/smscode/vo/VerifySmsAndDeviceRes;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/z;->c:Lcom/alipay/mobile/security/authcenter/ui/login/MobileInputFragment_;

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/login/z;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/security/authcenter/ui/login/z;->b:Lcom/alipay/mobileapp/biz/rpc/smscode/vo/VerifySmsAndDeviceRes;

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/security/authcenter/ui/login/MobileInputFragment_;->a(Lcom/alipay/mobile/security/authcenter/ui/login/MobileInputFragment_;Ljava/lang/String;Lcom/alipay/mobileapp/biz/rpc/smscode/vo/VerifySmsAndDeviceRes;)V

    return-void
.end method
