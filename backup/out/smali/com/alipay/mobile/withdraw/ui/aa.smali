.class final Lcom/alipay/mobile/withdraw/ui/aa;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/withdraw/ui/aa;->a:Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/withdraw/ui/aa;->a:Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity;

    invoke-static {v0}, Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity;->b(Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity;)Ljava/lang/Integer;

    iget-object v0, p0, Lcom/alipay/mobile/withdraw/ui/aa;->a:Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity;

    iget-object v1, p0, Lcom/alipay/mobile/withdraw/ui/aa;->a:Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity;

    invoke-static {v1}, Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity;->b(Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity;->a(Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity;Ljava/lang/Integer;)Ljava/lang/Integer;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{[info=smsCheckCodeSendBox], [msg=autoReadCount:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/withdraw/ui/aa;->a:Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity;

    invoke-static {v1}, Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity;->b(Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void
.end method
