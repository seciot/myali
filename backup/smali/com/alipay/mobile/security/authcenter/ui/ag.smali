.class final Lcom/alipay/mobile/security/authcenter/ui/ag;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/authcenter/ui/RegisterDownSmsFragment;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/authcenter/ui/RegisterDownSmsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/authcenter/ui/ag;->a:Lcom/alipay/mobile/security/authcenter/ui/RegisterDownSmsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/ag;->a:Lcom/alipay/mobile/security/authcenter/ui/RegisterDownSmsFragment;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/authcenter/ui/RegisterDownSmsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/ag;->a:Lcom/alipay/mobile/security/authcenter/ui/RegisterDownSmsFragment;

    iget-object v1, v1, Lcom/alipay/mobile/security/authcenter/ui/RegisterDownSmsFragment;->d:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/security/securitycommon/SecurityUtil;->c(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method
