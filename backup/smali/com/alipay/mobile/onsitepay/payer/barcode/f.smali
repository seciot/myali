.class final Lcom/alipay/mobile/onsitepay/payer/barcode/f;
.super Landroid/content/BroadcastReceiver;
.source "BarcodePayActivity.java"


# instance fields
.field final synthetic a:Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 132
    iput-object p1, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/f;->a:Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 135
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "seed_init_complete"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 136
    const-string/jumbo v1, "seed_init_complete_falg"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 137
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "SEED_INIT_COMPLETE result = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    iget-object v2, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/f;->a:Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v2, v0}, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->b(Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;Z)Z

    .line 139
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/f;->a:Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->n()V

    .line 141
    :cond_1
    return-void
.end method
