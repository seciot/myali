.class final Lcom/alipay/mobile/onsitepay/payer/barcode/a;
.super Landroid/os/Handler;
.source "BarcodePayActivity.java"


# instance fields
.field final synthetic a:Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;

.field private b:I


# direct methods
.method constructor <init>(Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/a;->a:Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 97
    const/16 v0, 0x5a0

    iput v0, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/a;->b:I

    .line 96
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter

    .prologue
    const/16 v3, 0x5a0

    const/16 v2, 0x65

    .line 101
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v2, :cond_3

    .line 102
    iget v0, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/a;->b:I

    if-lez v0, :cond_2

    .line 103
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/a;->a:Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;

    iget-object v0, v0, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->n:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 104
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/a;->a:Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;

    invoke-static {v0}, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->a(Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/a;->a:Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;

    iget-object v0, v0, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->n:Landroid/widget/ProgressBar;

    iget v1, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/a;->b:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 106
    iget v0, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/a;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/a;->b:I

    .line 108
    :cond_0
    invoke-virtual {p0, v2}, Lcom/alipay/mobile/onsitepay/payer/barcode/a;->removeMessages(I)V

    .line 109
    const-wide/16 v0, 0x29

    invoke-virtual {p0, v2, v0, v1}, Lcom/alipay/mobile/onsitepay/payer/barcode/a;->sendEmptyMessageDelayed(IJ)Z

    .line 129
    :cond_1
    :goto_0
    return-void

    .line 110
    :cond_2
    iget v0, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/a;->b:I

    if-nez v0, :cond_1

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "currentCount="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/a;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/a;->a:Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->a(Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;Z)V

    .line 113
    iput v3, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/a;->b:I

    .line 114
    invoke-virtual {p0, v2}, Lcom/alipay/mobile/onsitepay/payer/barcode/a;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 116
    :cond_3
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x66

    if-ne v0, v1, :cond_4

    .line 117
    iput v3, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/a;->b:I

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "MSG_TIME_COUNT_RESET currentCount="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/a;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/a;->a:Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->a(Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;Z)V

    .line 120
    invoke-virtual {p0, v2}, Lcom/alipay/mobile/onsitepay/payer/barcode/a;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 121
    :cond_4
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x67

    if-ne v0, v1, :cond_5

    .line 122
    iput v3, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/a;->b:I

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "MSG_TIME_COUNT_RESET currentCount="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/a;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/barcode/a;->a:Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;

    invoke-static {v0}, Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;->b(Lcom/alipay/mobile/onsitepay/payer/barcode/BarcodePayActivity;)V

    .line 125
    invoke-virtual {p0, v2}, Lcom/alipay/mobile/onsitepay/payer/barcode/a;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 127
    :cond_5
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0
.end method
