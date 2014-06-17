.class final Lcom/alipay/mobile/onsitepay/payer/barcode/d;
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
    .line 583
    iput-object p1, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/d;->a:Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    const/16 v2, 0x8

    .line 586
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/d;->a:Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;

    iget-object v0, v0, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->v:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    .line 587
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/d;->a:Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;

    iget-object v0, v0, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->v:Landroid/widget/ScrollView;

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 588
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/d;->a:Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;

    invoke-static {v0}, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->h(Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 589
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/d;->a:Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;

    iget-object v0, v0, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 591
    :cond_0
    return-void
.end method
