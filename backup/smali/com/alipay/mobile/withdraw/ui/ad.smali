.class final Lcom/alipay/mobile/withdraw/ui/ad;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/withdraw/ui/ad;->a:Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "isSmsCheckOk"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/alipay/mobile/withdraw/ui/ad;->a:Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/alipay/mobile/withdraw/ui/ad;->a:Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity;->finish()V

    return-void
.end method
