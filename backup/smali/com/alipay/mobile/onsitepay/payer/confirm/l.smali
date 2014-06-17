.class final Lcom/alipay/mobile/onsitepay/payer/confirm/l;
.super Ljava/lang/Object;
.source "C2CConfirmActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 347
    iput-object p1, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/l;->a:Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 13
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 350
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/l;->a:Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->c:J

    .line 352
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/l;->a:Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->MONITOR:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v2, "kf"

    iget-object v4, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/l;->a:Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;

    iget-object v4, v4, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->f:Ljava/lang/String;

    const-string/jumbo v8, "C2C"

    iget-object v5, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/l;->a:Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;

    iget-object v9, v5, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/l;->a:Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;

    invoke-virtual {v5}, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->a()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "-"

    const/4 v5, 0x5

    new-array v12, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "kf"

    aput-object v6, v12, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "confirmpay"

    aput-object v6, v12, v5

    const/4 v5, 0x2

    const-string/jumbo v6, ""

    aput-object v6, v12, v5

    const/4 v5, 0x3

    const-string/jumbo v6, "y"

    aput-object v6, v12, v5

    const/4 v5, 0x4

    const-string/jumbo v6, "alipayclient"

    aput-object v6, v12, v5

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-static/range {v0 .. v12}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 355
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/l;->a:Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;

    iget-object v0, v0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->k:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getInputedText()Ljava/lang/String;

    move-result-object v0

    .line 356
    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/l;->a:Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;

    iget-object v2, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/l;->a:Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;

    invoke-virtual {v2}, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/onsitepay/f;->b:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->showProgressDialog(Ljava/lang/String;)V

    .line 357
    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/l;->a:Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->c(Ljava/lang/String;)V

    .line 358
    return-void
.end method
