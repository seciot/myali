.class public Lcom/alipay/mobile/onsitepay/payer/barcode/SizeEventImageView;
.super Landroid/widget/ImageView;
.source "SizeEventImageView.java"


# instance fields
.field protected listener:Lcom/alipay/mobile/onsitepay/payer/barcode/v;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 12
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/SizeEventImageView;->listener:Lcom/alipay/mobile/onsitepay/payer/barcode/v;

    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/SizeEventImageView;->listener:Lcom/alipay/mobile/onsitepay/payer/barcode/v;

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/SizeEventImageView;->listener:Lcom/alipay/mobile/onsitepay/payer/barcode/v;

    .line 21
    return-void
.end method


# virtual methods
.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    .line 36
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/SizeEventImageView;->listener:Lcom/alipay/mobile/onsitepay/payer/barcode/v;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/SizeEventImageView;->listener:Lcom/alipay/mobile/onsitepay/payer/barcode/v;

    invoke-interface {v0}, Lcom/alipay/mobile/onsitepay/payer/barcode/v;->a()V

    .line 39
    :cond_0
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 44
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/SizeEventImageView;->listener:Lcom/alipay/mobile/onsitepay/payer/barcode/v;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/SizeEventImageView;->listener:Lcom/alipay/mobile/onsitepay/payer/barcode/v;

    invoke-interface {v0}, Lcom/alipay/mobile/onsitepay/payer/barcode/v;->a()V

    .line 47
    :cond_0
    return-void
.end method

.method public reFresh()V
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/SizeEventImageView;->listener:Lcom/alipay/mobile/onsitepay/payer/barcode/v;

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/SizeEventImageView;->listener:Lcom/alipay/mobile/onsitepay/payer/barcode/v;

    invoke-interface {v0}, Lcom/alipay/mobile/onsitepay/payer/barcode/v;->a()V

    .line 31
    :cond_0
    return-void
.end method

.method public setOnRefreshEventListener(Lcom/alipay/mobile/onsitepay/payer/barcode/v;)V
    .locals 0
    .parameter

    .prologue
    .line 24
    iput-object p1, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/SizeEventImageView;->listener:Lcom/alipay/mobile/onsitepay/payer/barcode/v;

    .line 25
    return-void
.end method
