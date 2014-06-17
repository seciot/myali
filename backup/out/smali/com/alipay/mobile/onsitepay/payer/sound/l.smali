.class final Lcom/alipay/mobile/onsitepay/payer/sound/l;
.super Ljava/lang/Object;
.source "SendSoundViewActivity.java"

# interfaces
.implements Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierCallback;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/onsitepay/payer/sound/k;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/onsitepay/payer/sound/k;)V
    .locals 0
    .parameter

    .prologue
    .line 289
    iput-object p1, p0, Lcom/alipay/mobile/onsitepay/payer/sound/l;->a:Lcom/alipay/mobile/onsitepay/payer/sound/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInstallFailed()V
    .locals 3

    .prologue
    .line 291
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/l;->a:Lcom/alipay/mobile/onsitepay/payer/sound/k;

    iget-object v0, v0, Lcom/alipay/mobile/onsitepay/payer/sound/k;->a:Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->m()V

    .line 293
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/l;->a:Lcom/alipay/mobile/onsitepay/payer/sound/k;

    iget-object v0, v0, Lcom/alipay/mobile/onsitepay/payer/sound/k;->a:Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;

    const-string/jumbo v1, "\u8bbe\u5907\u8ba4\u8bc1\u5931\u8d25"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->toast(Ljava/lang/String;I)V

    .line 294
    return-void
.end method

.method public final onPayFailed(ILjava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 296
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/l;->a:Lcom/alipay/mobile/onsitepay/payer/sound/k;

    iget-object v0, v0, Lcom/alipay/mobile/onsitepay/payer/sound/k;->a:Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;

    invoke-static {v0}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->h(Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;)Z

    .line 297
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/l;->a:Lcom/alipay/mobile/onsitepay/payer/sound/k;

    iget-object v0, v0, Lcom/alipay/mobile/onsitepay/payer/sound/k;->a:Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->m()V

    .line 298
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/l;->a:Lcom/alipay/mobile/onsitepay/payer/sound/k;

    iget-object v0, v0, Lcom/alipay/mobile/onsitepay/payer/sound/k;->a:Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;

    const-string/jumbo v1, "\u8bbe\u5907\u8ba4\u8bc1\u5931\u8d25"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->toast(Ljava/lang/String;I)V

    .line 299
    return-void
.end method

.method public final onPaySuccess(Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierPaymentResult;)V
    .locals 3
    .parameter

    .prologue
    .line 301
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/l;->a:Lcom/alipay/mobile/onsitepay/payer/sound/k;

    iget-object v0, v0, Lcom/alipay/mobile/onsitepay/payer/sound/k;->a:Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;

    invoke-static {v0}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->i(Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;)Z

    .line 302
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/l;->a:Lcom/alipay/mobile/onsitepay/payer/sound/k;

    iget-object v0, v0, Lcom/alipay/mobile/onsitepay/payer/sound/k;->a:Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->m()V

    .line 303
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/l;->a:Lcom/alipay/mobile/onsitepay/payer/sound/k;

    iget-object v0, v0, Lcom/alipay/mobile/onsitepay/payer/sound/k;->a:Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;

    const-string/jumbo v1, "\u8bbe\u5907\u8ba4\u8bc1\u6210\u529f"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->toast(Ljava/lang/String;I)V

    .line 304
    return-void
.end method
