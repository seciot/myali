.class final Lcom/alipay/mobile/security/authcenter/ui/ap;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobileapp/biz/rpc/register/vo/SetMobilePayPwdRes;

.field final synthetic b:Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;Lcom/alipay/mobileapp/biz/rpc/register/vo/SetMobilePayPwdRes;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/authcenter/ui/ap;->b:Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;

    iput-object p2, p0, Lcom/alipay/mobile/security/authcenter/ui/ap;->a:Lcom/alipay/mobileapp/biz/rpc/register/vo/SetMobilePayPwdRes;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/ap;->b:Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/ap;->b:Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/ap;->b:Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;

    invoke-static {v1}, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->a(Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/security/authcenter/ui/ap;->a:Lcom/alipay/mobileapp/biz/rpc/register/vo/SetMobilePayPwdRes;

    invoke-virtual {v2}, Lcom/alipay/mobileapp/biz/rpc/register/vo/SetMobilePayPwdRes;->isMobileUser()Z

    move-result v2

    invoke-static {v0, v1, v3, v3, v2}, Lcom/alipay/mobile/security/authcenter/ui/RegisterNewActivity;->a(Ljava/lang/String;Ljava/lang/String;ZZZ)V

    return-void
.end method
