.class final Lcom/alipay/mobile/onsitepay/payee/g;
.super Ljava/lang/Object;
.source "FacePayeeActivity.java"

# interfaces
.implements Lcom/alipay/mobile/framework/service/phoneblacklist/PhoneBlackListCallBack;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 398
    iput-object p1, p0, Lcom/alipay/mobile/onsitepay/payee/g;->a:Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final callBack(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 402
    if-eqz p1, :cond_0

    .line 403
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "choseMode phoneBlackList = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 405
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/g;->a:Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;

    invoke-static {v0}, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->b(Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;)Lcom/alipay/sonicwavenfc/SonicWaveNFC;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/sonicwavenfc/SonicWaveNFC;->setPhoneConfig(Ljava/lang/String;)V

    .line 406
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/g;->a:Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;

    invoke-static {v0}, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->b(Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;)Lcom/alipay/sonicwavenfc/SonicWaveNFC;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/sonicwavenfc/SonicWaveNFC;->isReceiverSoincWave()Z

    move-result v0

    if-nez v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/g;->a:Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;

    invoke-static {v0}, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->d(Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;)Z

    .line 408
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/g;->a:Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->a(Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;I)V

    .line 409
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/g;->a:Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->o:Z

    .line 410
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/g;->a:Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;

    iget-object v0, v0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->i:Lcom/alipay/mobile/commonui/widget/APTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    .line 414
    :cond_0
    return-void
.end method
