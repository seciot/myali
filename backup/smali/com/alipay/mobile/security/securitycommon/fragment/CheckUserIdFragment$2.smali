.class Lcom/alipay/mobile/security/securitycommon/fragment/CheckUserIdFragment$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/securitycommon/fragment/CheckUserIdFragment;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/securitycommon/fragment/CheckUserIdFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/securitycommon/fragment/CheckUserIdFragment$2;->a:Lcom/alipay/mobile/security/securitycommon/fragment/CheckUserIdFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/security/securitycommon/fragment/CheckUserIdFragment$2;->a:Lcom/alipay/mobile/security/securitycommon/fragment/CheckUserIdFragment;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/securitycommon/fragment/CheckUserIdFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/mobile/security/securitycommon/fragment/CheckUserIdFragment;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/security/securitycommon/fragment/CheckUserIdFragment$2;->a:Lcom/alipay/mobile/security/securitycommon/fragment/CheckUserIdFragment;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/securitycommon/fragment/CheckUserIdFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/security/securitycommon/fragment/CheckUserIdFragment$2;->a:Lcom/alipay/mobile/security/securitycommon/fragment/CheckUserIdFragment;

    invoke-static {v1}, Lcom/alipay/mobile/security/securitycommon/fragment/CheckUserIdFragment;->a(Lcom/alipay/mobile/security/securitycommon/fragment/CheckUserIdFragment;)Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/security/securitycommon/SecurityUtil;->c(Landroid/content/Context;Landroid/view/View;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/alipay/mobile/security/securitycommon/fragment/CheckUserIdFragment;->a:Ljava/lang/String;

    goto :goto_0
.end method
