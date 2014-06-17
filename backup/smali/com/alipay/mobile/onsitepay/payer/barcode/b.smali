.class final Lcom/alipay/mobile/onsitepay/payer/barcode/b;
.super Ljava/lang/Object;
.source "BarcodePayActivity.java"

# interfaces
.implements Lcom/alipay/mobile/onsitepay/payer/barcode/v;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 417
    iput-object p1, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/b;->b:Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;

    iput-object p2, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/b;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 420
    const-string/jumbo v0, "barcode"

    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 421
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/b;->b:Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;

    invoke-static {v0}, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->k(Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "CODE_128"

    iget-object v2, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/b;->b:Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;

    iget-object v2, v2, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->t:Lcom/alipay/mobile/onsitepay/payer/barcode/SizeEventImageView;

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/mobile/onsitepay/utils/j;->a(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;Z)V

    .line 425
    :goto_0
    return-void

    .line 423
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/b;->b:Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;

    invoke-static {v0}, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->l(Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "QR_CODE"

    iget-object v2, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/b;->b:Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;

    iget-object v2, v2, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->t:Lcom/alipay/mobile/onsitepay/payer/barcode/SizeEventImageView;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/mobile/onsitepay/utils/j;->a(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;Z)V

    goto :goto_0
.end method
