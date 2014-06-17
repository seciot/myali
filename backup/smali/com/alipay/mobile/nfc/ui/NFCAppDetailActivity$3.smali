.class Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity$3;->a:Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity$3;->a:Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;

    invoke-static {v0}, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;->d(Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity$3;->a:Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;

    invoke-static {v0}, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;->e(Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity$3;->a:Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;

    invoke-static {v0}, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;->d(Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity$3;->a:Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;

    sget v2, Lcom/alipay/mobile/nfc/R$string;->c:I

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity$3;->a:Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;

    const-string/jumbo v1, "main_button_style"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;->a(Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity$3;->a:Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;

    invoke-static {v0}, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;->d(Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity$3;->a:Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;

    sget v2, Lcom/alipay/mobile/nfc/R$string;->l:I

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity$3;->a:Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;

    const-string/jumbo v1, "main_button_style"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;->a(Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xca
        :pswitch_0
    .end packed-switch
.end method
