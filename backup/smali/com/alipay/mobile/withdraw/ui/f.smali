.class final Lcom/alipay/mobile/withdraw/ui/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/withdraw/ui/f;->a:Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/withdraw/ui/f;->a:Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;

    const-string/jumbo v1, "withdraw"

    const-string/jumbo v2, "selectCard"

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->a(Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/withdraw/ui/f;->a:Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;

    invoke-static {v0}, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->a(Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/withdraw/ui/f;->a:Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;

    invoke-static {v0}, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->b(Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/withdraw/ui/f;->a:Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;

    invoke-static {v0}, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->a(Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method
