.class final Lcom/alipay/mobile/security/accountmanager/ui/bi;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity_;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity_;Z)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/accountmanager/ui/bi;->b:Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity_;

    iput-boolean p2, p0, Lcom/alipay/mobile/security/accountmanager/ui/bi;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/bi;->b:Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity_;

    iget-boolean v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/bi;->a:Z

    invoke-static {v0, v1}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity_;->a(Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity_;Z)V

    return-void
.end method
