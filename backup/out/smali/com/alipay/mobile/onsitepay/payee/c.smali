.class final Lcom/alipay/mobile/onsitepay/payee/c;
.super Ljava/lang/Object;
.source "FacePayeeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 241
    iput-object p1, p0, Lcom/alipay/mobile/onsitepay/payee/c;->a:Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 244
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 245
    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/payee/c;->a:Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;

    const-class v2, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity_;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 246
    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/payee/c;->a:Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;

    invoke-virtual {v1}, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->finish()V

    .line 247
    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/payee/c;->a:Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;

    invoke-static {v1}, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->b(Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;)Lcom/alipay/sonicwavenfc/SonicWaveNFC;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/sonicwavenfc/SonicWaveNFC;->stopReceiveData()V

    .line 248
    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/payee/c;->a:Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->startActivity(Landroid/content/Intent;)V

    .line 249
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/c;->a:Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;

    const v1, 0x10a0002

    const v2, 0x10a0003

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->overridePendingTransition(II)V

    .line 253
    return-void
.end method
