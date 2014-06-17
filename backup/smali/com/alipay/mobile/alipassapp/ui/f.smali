.class final Lcom/alipay/mobile/alipassapp/ui/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/ui/f;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 15

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/f;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->o(Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/f;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->d(Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "COUPON"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/StringUtils;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->CLICKED:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    const-string/jumbo v4, "20000030"

    const-string/jumbo v5, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, "couponDetails"

    const-string/jumbo v8, "del"

    const-string/jumbo v9, ""

    const-string/jumbo v10, ""

    const-string/jumbo v11, ""

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    iget-object v14, p0, Lcom/alipay/mobile/alipassapp/ui/f;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;

    invoke-static {v14}, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->e(Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    iget-object v14, p0, Lcom/alipay/mobile/alipassapp/ui/f;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;

    invoke-static {v14}, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->f(Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static/range {v0 .. v12}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/f;->a:Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;

    new-instance v1, Lcom/alipay/mobile/alipassapp/ui/g;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/alipassapp/ui/g;-><init>(Lcom/alipay/mobile/alipassapp/ui/f;)V

    invoke-static {v0, v1}, Lcom/alipay/mobile/alipassapp/ui/common/ai;->a(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method
