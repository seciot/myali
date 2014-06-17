.class final Lcom/alipay/mobile/onsitepay/payer/barcode/m;
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
    .line 208
    iput-object p1, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/m;->a:Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 211
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/m;->a:Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;

    iget-object v0, v0, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->q:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 212
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/m;->a:Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;

    new-instance v1, Lcom/alipay/mobile/onsitepay/payer/barcode/n;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/onsitepay/payer/barcode/n;-><init>(Lcom/alipay/mobile/onsitepay/payer/barcode/m;)V

    invoke-static {v0, v1}, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->a(Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierCallback;)V

    .line 232
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/m;->a:Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;

    iget-object v0, v0, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->q:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 233
    return-void
.end method
