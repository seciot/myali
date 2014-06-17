.class final Lcom/alipay/mobile/security/accountmanager/ui/aq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/security/authcenter/ui/regist/PreRegistFragment$a;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/accountmanager/ui/aq;->b:Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;

    iput-object p2, p0, Lcom/alipay/mobile/security/accountmanager/ui/aq;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/aq;->b:Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;

    iget-object v0, v0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->e:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/aq;->b:Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/aq;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->h(Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;Ljava/lang/String;)V

    return-void
.end method
