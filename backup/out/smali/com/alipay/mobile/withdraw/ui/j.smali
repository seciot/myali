.class final Lcom/alipay/mobile/withdraw/ui/j;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/common/dialog/base/BasePwdInputDialog$CloseDialogCallback;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/withdraw/ui/h;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/withdraw/ui/h;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/withdraw/ui/j;->a:Lcom/alipay/mobile/withdraw/ui/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClose(ZLjava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/withdraw/ui/j;->a:Lcom/alipay/mobile/withdraw/ui/h;

    iget-object v0, v0, Lcom/alipay/mobile/withdraw/ui/h;->a:Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;

    invoke-virtual {v0, p2}, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/withdraw/ui/j;->a:Lcom/alipay/mobile/withdraw/ui/h;

    iget-object v0, v0, Lcom/alipay/mobile/withdraw/ui/h;->a:Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;

    invoke-static {v0}, Lcom/alipay/mobile/common/misc/ExtViewUtil;->closeSoftInputWindow(Landroid/app/Activity;)V

    goto :goto_0
.end method
