.class final Lcom/alipay/mobile/onsitepay/payer/barcode/k;
.super Ljava/lang/Object;
.source "BarcodePayActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 194
    iput-object p1, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/k;->a:Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 197
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/k;->a:Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;

    const-string/jumbo v1, "barcode"

    invoke-static {v0, v1}, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->a(Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;Ljava/lang/String;)V

    .line 198
    return-void
.end method
