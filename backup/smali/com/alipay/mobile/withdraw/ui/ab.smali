.class final Lcom/alipay/mobile/withdraw/ui/ab;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/withdraw/ui/ab;->a:Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/withdraw/ui/ab;->a:Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity;

    invoke-static {v0}, Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity;->a(Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity;)Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;->dispose()V

    iget-object v0, p0, Lcom/alipay/mobile/withdraw/ui/ab;->a:Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity;

    invoke-static {v0}, Lcom/alipay/mobile/common/misc/ExtViewUtil;->closeSoftInputWindow(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/alipay/mobile/withdraw/ui/ab;->a:Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity;

    invoke-static {v0}, Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity;->c(Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity;)V

    return-void
.end method
