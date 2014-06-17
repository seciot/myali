.class final Lcom/alipay/mobile/onsitepay/payer/confirm/m;
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
    .line 361
    iput-object p1, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/m;->a:Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .parameter
    .parameter

    .prologue
    .line 366
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/m;->a:Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->CLICKED:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v2, "-"

    const-string/jumbo v3, "-"

    iget-object v4, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/m;->a:Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;

    iget-object v4, v4, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->f:Ljava/lang/String;

    const-string/jumbo v5, "-"

    const-string/jumbo v6, "payConfirmView"

    const-string/jumbo v7, "-"

    const-string/jumbo v8, "cancelButton"

    invoke-static/range {v0 .. v8}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    return-void
.end method
