.class Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity$2;->a:Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity$2;->a:Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;

    invoke-static {v0}, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;->d(Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity$2;->a:Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;

    invoke-static {v0}, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;->d(Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;)Landroid/widget/Button;

    move-result-object v0

    const-string/jumbo v1, "\u5b89\u88c5\u5e94\u7528"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity$2;->a:Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;

    const-string/jumbo v1, "main_button_style"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;->a(Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity$2;->a:Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/nfc/ui/NFCAppDetailActivity;->finish()V

    return-void
.end method
