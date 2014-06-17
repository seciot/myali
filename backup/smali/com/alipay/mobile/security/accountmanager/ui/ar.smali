.class final Lcom/alipay/mobile/security/accountmanager/ui/ar;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/security/securitycommon/fragment/SelectAccountFragment$SelectAccountCallBack;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/accountmanager/ui/ar;->b:Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;

    iput-object p2, p0, Lcom/alipay/mobile/security/accountmanager/ui/ar;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILcom/alipay/mobile/security/securitycommon/data/SelectAccountInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ar;->b:Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;

    invoke-static {v0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->D(Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;)Z

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/ar;->b:Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ar;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilesecurity/core/model/VerifyCertifyByMspUserInfo;

    invoke-virtual {v0}, Lcom/alipay/mobilesecurity/core/model/VerifyCertifyByMspUserInfo;->getLogonId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->i(Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/ar;->b:Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ar;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilesecurity/core/model/VerifyCertifyByMspUserInfo;

    invoke-virtual {v0}, Lcom/alipay/mobilesecurity/core/model/VerifyCertifyByMspUserInfo;->isCertified()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->a(Z)V

    return-void
.end method
