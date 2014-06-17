.class final Lcom/alipay/mobile/onsitepay/payer/barcode/c;
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
    .line 433
    iput-object p1, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/c;->a:Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 436
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/c;->a:Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;

    iget-object v0, v0, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->u:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 437
    return-void
.end method
