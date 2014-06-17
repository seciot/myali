.class final Lcom/alipay/mobile/onsitepay/payer/sound/p;
.super Ljava/lang/Object;
.source "SendSoundViewActivity.java"

# interfaces
.implements Lcom/alipay/mobile/framework/service/phoneblacklist/PhoneBlackListCallBack;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 780
    iput-object p1, p0, Lcom/alipay/mobile/onsitepay/payer/sound/p;->a:Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final callBack(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 783
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "phoneBlackList="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 784
    if-eqz p1, :cond_0

    .line 785
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/p;->a:Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->b(Ljava/lang/String;)V

    .line 787
    :cond_0
    return-void
.end method
