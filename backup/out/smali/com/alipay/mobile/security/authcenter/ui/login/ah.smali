.class final Lcom/alipay/mobile/security/authcenter/ui/login/ah;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/security/authcenter/ui/w;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/authcenter/ui/login/UserLoginFragment;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/authcenter/ui/login/UserLoginFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/authcenter/ui/login/ah;->a:Lcom/alipay/mobile/security/authcenter/ui/login/UserLoginFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/ah;->a:Lcom/alipay/mobile/security/authcenter/ui/login/UserLoginFragment;

    iget-object v0, v0, Lcom/alipay/mobile/security/authcenter/ui/login/UserLoginFragment;->m:Lcom/alipay/mobile/commonui/widget/APScrollView;

    invoke-virtual {v0, v1, v1}, Lcom/alipay/mobile/commonui/widget/APScrollView;->scrollTo(II)V

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/ah;->a:Lcom/alipay/mobile/security/authcenter/ui/login/UserLoginFragment;

    iget-object v0, v0, Lcom/alipay/mobile/security/authcenter/ui/login/UserLoginFragment;->j:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setVisibility(I)V

    return-void
.end method

.method public final b()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/ah;->a:Lcom/alipay/mobile/security/authcenter/ui/login/UserLoginFragment;

    iget-object v0, v0, Lcom/alipay/mobile/security/authcenter/ui/login/UserLoginFragment;->m:Lcom/alipay/mobile/commonui/widget/APScrollView;

    const/4 v1, 0x0

    const/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/commonui/widget/APScrollView;->scrollTo(II)V

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/ah;->a:Lcom/alipay/mobile/security/authcenter/ui/login/UserLoginFragment;

    iget-object v0, v0, Lcom/alipay/mobile/security/authcenter/ui/login/UserLoginFragment;->j:Lcom/alipay/mobile/commonui/widget/APButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setVisibility(I)V

    return-void
.end method
