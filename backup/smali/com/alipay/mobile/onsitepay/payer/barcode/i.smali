.class final Lcom/alipay/mobile/onsitepay/payer/barcode/i;
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
    .line 180
    iput-object p1, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/i;->a:Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/i;->a:Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;

    invoke-static {v0}, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->f(Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/i;->a:Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;

    invoke-static {v0}, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->g(Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;)V

    .line 186
    :cond_0
    return-void
.end method
