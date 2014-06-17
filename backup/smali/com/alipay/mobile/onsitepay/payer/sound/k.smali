.class final Lcom/alipay/mobile/onsitepay/payer/sound/k;
.super Ljava/lang/Object;
.source "SendSoundViewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 282
    iput-object p1, p0, Lcom/alipay/mobile/onsitepay/payer/sound/k;->a:Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 14
    .parameter

    .prologue
    const/4 v13, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 285
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/k;->a:Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;

    iget-object v0, v0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 286
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/k;->a:Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->MONITOR:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v2, "kf"

    const-string/jumbo v8, ""

    const-string/jumbo v9, ""

    iget-object v4, p0, Lcom/alipay/mobile/onsitepay/payer/sound/k;->a:Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;

    invoke-static {}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->v()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "-"

    const/4 v4, 0x5

    new-array v12, v4, [Ljava/lang/String;

    const-string/jumbo v4, "kf"

    aput-object v4, v12, v5

    const-string/jumbo v4, "deviceAuthLayout_clicked"

    aput-object v4, v12, v13

    const/4 v4, 0x2

    const-string/jumbo v5, ""

    aput-object v5, v12, v4

    const/4 v4, 0x3

    const-string/jumbo v5, "y"

    aput-object v5, v12, v4

    const/4 v4, 0x4

    const-string/jumbo v5, "alipayclient"

    aput-object v5, v12, v4

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-static/range {v0 .. v12}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/k;->a:Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;

    new-instance v1, Lcom/alipay/mobile/onsitepay/payer/sound/l;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/onsitepay/payer/sound/l;-><init>(Lcom/alipay/mobile/onsitepay/payer/sound/k;)V

    invoke-static {v0, v1}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->a(Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierCallback;)V

    .line 306
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/k;->a:Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;

    iget-object v0, v0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v13}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 307
    return-void
.end method
