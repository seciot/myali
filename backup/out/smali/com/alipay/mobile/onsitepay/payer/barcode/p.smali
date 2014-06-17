.class final Lcom/alipay/mobile/onsitepay/payer/barcode/p;
.super Ljava/lang/Object;
.source "BarcodePayActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity_;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity_;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/p;->b:Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity_;

    iput-object p2, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/p;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/p;->b:Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity_;

    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/p;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity_;->a(Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity_;Ljava/lang/String;)V

    .line 98
    return-void
.end method
