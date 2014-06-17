.class final Lcom/alipay/mobile/security/accountmanager/ui/be;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobilesecurity/core/model/mainpage/imagecode/ApplyImageCodeResult;

.field final synthetic b:Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity_;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity_;Lcom/alipay/mobilesecurity/core/model/mainpage/imagecode/ApplyImageCodeResult;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/accountmanager/ui/be;->b:Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity_;

    iput-object p2, p0, Lcom/alipay/mobile/security/accountmanager/ui/be;->a:Lcom/alipay/mobilesecurity/core/model/mainpage/imagecode/ApplyImageCodeResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/be;->b:Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity_;

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/be;->a:Lcom/alipay/mobilesecurity/core/model/mainpage/imagecode/ApplyImageCodeResult;

    invoke-static {v0, v1}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity_;->a(Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity_;Lcom/alipay/mobilesecurity/core/model/mainpage/imagecode/ApplyImageCodeResult;)V

    return-void
.end method
