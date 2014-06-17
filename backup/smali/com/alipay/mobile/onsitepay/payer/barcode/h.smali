.class final Lcom/alipay/mobile/onsitepay/payer/barcode/h;
.super Ljava/lang/Object;
.source "BarcodePayActivity.java"

# interfaces
.implements Lcom/alipay/mobile/onsitepay/payer/barcode/v;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 173
    iput-object p1, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/h;->a:Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 176
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/h;->a:Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;

    invoke-static {v0}, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->d(Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/h;->a:Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;

    invoke-static {v0}, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->e(Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "CODE_128"

    iget-object v2, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/h;->a:Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;

    iget-object v2, v2, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->l:Lcom/alipay/mobile/onsitepay/payer/barcode/SizeEventImageView;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/mobile/onsitepay/utils/j;->a(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;Z)V

    .line 178
    :cond_0
    return-void
.end method
