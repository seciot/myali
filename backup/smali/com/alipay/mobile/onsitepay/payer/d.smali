.class final Lcom/alipay/mobile/onsitepay/payer/d;
.super Ljava/lang/Object;
.source "AutoPaySuccessActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alipay/mobile/onsitepay/payer/AutoPaySuccessActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/onsitepay/payer/AutoPaySuccessActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lcom/alipay/mobile/onsitepay/payer/d;->b:Lcom/alipay/mobile/onsitepay/payer/AutoPaySuccessActivity;

    iput-object p2, p0, Lcom/alipay/mobile/onsitepay/payer/d;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 133
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/d;->b:Lcom/alipay/mobile/onsitepay/payer/AutoPaySuccessActivity;

    iget-object v0, v0, Lcom/alipay/mobile/onsitepay/payer/AutoPaySuccessActivity;->a:Ljava/lang/String;

    .line 134
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/d;->b:Lcom/alipay/mobile/onsitepay/payer/AutoPaySuccessActivity;

    invoke-static {}, Lcom/alipay/mobile/onsitepay/payer/AutoPaySuccessActivity;->a()Lcom/alipay/livetradeprod/core/service/gw/SoundWavePayRpcFacade;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/payer/d;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/alipay/livetradeprod/core/service/gw/SoundWavePayRpcFacade;->payResultAck(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :goto_0
    return-void

    .line 136
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/d;->b:Lcom/alipay/mobile/onsitepay/payer/AutoPaySuccessActivity;

    iget-object v0, v0, Lcom/alipay/mobile/onsitepay/payer/AutoPaySuccessActivity;->a:Ljava/lang/String;

    goto :goto_0
.end method
