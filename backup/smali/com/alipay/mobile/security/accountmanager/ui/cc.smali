.class final Lcom/alipay/mobile/security/accountmanager/ui/cc;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;

.field final synthetic b:Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity_;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity_;Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/accountmanager/ui/cc;->b:Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity_;

    iput-object p2, p0, Lcom/alipay/mobile/security/accountmanager/ui/cc;->a:Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/cc;->b:Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity_;

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/cc;->a:Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;

    invoke-static {v0, v1}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity_;->a(Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity_;Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;)V

    return-void
.end method
