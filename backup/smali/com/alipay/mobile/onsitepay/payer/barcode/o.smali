.class final Lcom/alipay/mobile/onsitepay/payer/barcode/o;
.super Ljava/lang/Object;
.source "BarcodePayActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/livetradeprod/core/model/rpc/GetDynamicIdRes;

.field final synthetic b:Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity_;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity_;Lcom/alipay/livetradeprod/core/model/rpc/GetDynamicIdRes;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/o;->b:Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity_;

    iput-object p2, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/o;->a:Lcom/alipay/livetradeprod/core/model/rpc/GetDynamicIdRes;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/o;->b:Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity_;

    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/o;->a:Lcom/alipay/livetradeprod/core/model/rpc/GetDynamicIdRes;

    invoke-static {v0, v1}, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity_;->a(Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity_;Lcom/alipay/livetradeprod/core/model/rpc/GetDynamicIdRes;)V

    .line 84
    return-void
.end method
