.class final Lcom/alipay/mobile/onsitepay/payer/barcode/n;
.super Ljava/lang/Object;
.source "BarcodePayActivity.java"

# interfaces
.implements Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierCallback;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/onsitepay/payer/barcode/m;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/onsitepay/payer/barcode/m;)V
    .locals 0
    .parameter

    .prologue
    .line 212
    iput-object p1, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/n;->a:Lcom/alipay/mobile/onsitepay/payer/barcode/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInstallFailed()V
    .locals 3

    .prologue
    .line 214
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/n;->a:Lcom/alipay/mobile/onsitepay/payer/barcode/m;

    iget-object v0, v0, Lcom/alipay/mobile/onsitepay/payer/barcode/m;->a:Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->n()V

    .line 216
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/n;->a:Lcom/alipay/mobile/onsitepay/payer/barcode/m;

    iget-object v0, v0, Lcom/alipay/mobile/onsitepay/payer/barcode/m;->a:Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;

    const-string/jumbo v1, "\u8bbe\u5907\u8ba4\u8bc1\u5931\u8d25"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->toast(Ljava/lang/String;I)V

    .line 217
    return-void
.end method

.method public final onPayFailed(ILjava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 220
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/n;->a:Lcom/alipay/mobile/onsitepay/payer/barcode/m;

    iget-object v0, v0, Lcom/alipay/mobile/onsitepay/payer/barcode/m;->a:Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;

    invoke-static {v0}, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->i(Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;)Z

    .line 221
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/n;->a:Lcom/alipay/mobile/onsitepay/payer/barcode/m;

    iget-object v0, v0, Lcom/alipay/mobile/onsitepay/payer/barcode/m;->a:Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->n()V

    .line 222
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/n;->a:Lcom/alipay/mobile/onsitepay/payer/barcode/m;

    iget-object v0, v0, Lcom/alipay/mobile/onsitepay/payer/barcode/m;->a:Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;

    const-string/jumbo v1, "\u8bbe\u5907\u8ba4\u8bc1\u5931\u8d25"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->toast(Ljava/lang/String;I)V

    .line 223
    return-void
.end method

.method public final onPaySuccess(Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierPaymentResult;)V
    .locals 3
    .parameter

    .prologue
    .line 226
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/n;->a:Lcom/alipay/mobile/onsitepay/payer/barcode/m;

    iget-object v0, v0, Lcom/alipay/mobile/onsitepay/payer/barcode/m;->a:Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;

    invoke-static {v0}, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->j(Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;)Z

    .line 227
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/n;->a:Lcom/alipay/mobile/onsitepay/payer/barcode/m;

    iget-object v0, v0, Lcom/alipay/mobile/onsitepay/payer/barcode/m;->a:Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->n()V

    .line 228
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/n;->a:Lcom/alipay/mobile/onsitepay/payer/barcode/m;

    iget-object v0, v0, Lcom/alipay/mobile/onsitepay/payer/barcode/m;->a:Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;

    const-string/jumbo v1, "\u8bbe\u5907\u8ba4\u8bc1\u6210\u529f"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->toast(Ljava/lang/String;I)V

    .line 230
    return-void
.end method
