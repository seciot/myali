.class Lcom/alipay/mobile/security/securitycommon/fragment/SetSimplePwdFragment$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/securitycommon/fragment/SetSimplePwdFragment;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/securitycommon/fragment/SetSimplePwdFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SetSimplePwdFragment$1;->a:Lcom/alipay/mobile/security/securitycommon/fragment/SetSimplePwdFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SetSimplePwdFragment$1;->a:Lcom/alipay/mobile/security/securitycommon/fragment/SetSimplePwdFragment;

    iget-object v1, v1, Lcom/alipay/mobile/security/securitycommon/fragment/SetSimplePwdFragment;->b:Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;

    invoke-static {v0, v1}, Lcom/alipay/mobile/security/securitycommon/SecurityUtil;->b(Landroid/content/Context;Landroid/view/View;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SetSimplePwdFragment$1;->a:Lcom/alipay/mobile/security/securitycommon/fragment/SetSimplePwdFragment;

    invoke-static {v0}, Lcom/alipay/mobile/security/securitycommon/fragment/SetSimplePwdFragment;->a(Lcom/alipay/mobile/security/securitycommon/fragment/SetSimplePwdFragment;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SetSimplePwdFragment$1;->a:Lcom/alipay/mobile/security/securitycommon/fragment/SetSimplePwdFragment;

    iget-object v1, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SetSimplePwdFragment$1;->a:Lcom/alipay/mobile/security/securitycommon/fragment/SetSimplePwdFragment;

    invoke-static {v1}, Lcom/alipay/mobile/security/securitycommon/fragment/SetSimplePwdFragment;->a(Lcom/alipay/mobile/security/securitycommon/fragment/SetSimplePwdFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/securitycommon/fragment/SetSimplePwdFragment;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
