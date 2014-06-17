.class public Lcom/alipay/android/widgets/asset/widget/DefaultWidgetActionStrategy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/android/widgets/asset/widget/IWidgetActionStrategy;


# instance fields
.field protected a:Z

.field private b:Landroid/content/Context;

.field private c:Lcom/alipay/mobile/framework/service/common/SchemeService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/widgets/asset/widget/DefaultWidgetActionStrategy;->a:Z

    iput-object p1, p0, Lcom/alipay/android/widgets/asset/widget/DefaultWidgetActionStrategy;->b:Landroid/content/Context;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/common/SchemeService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/SchemeService;

    iput-object v0, p0, Lcom/alipay/android/widgets/asset/widget/DefaultWidgetActionStrategy;->c:Lcom/alipay/mobile/framework/service/common/SchemeService;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Map;ILcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeInfo;)Lcom/alipay/android/widgets/asset/widget/IAssetWidgetView;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I",
            "Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeInfo;",
            ")",
            "Lcom/alipay/android/widgets/asset/widget/IAssetWidgetView;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p3, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v1, "tips"

    iget-object v2, p3, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeInfo;->opText:Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/alipay/android/widgets/asset/widget/DefaultWidgetActionStrategy;->b:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/alipay/android/phone/wealth/home/R$layout;->d:I

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/asset/common/view/WealthDynamicTableView;

    invoke-virtual {v0, p1}, Lcom/alipay/asset/common/view/WealthDynamicTableView;->setDisplayInfo(Ljava/util/Map;)V

    invoke-virtual {v0, p2}, Lcom/alipay/asset/common/view/WealthDynamicTableView;->setViewFlag(I)V

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/android/widgets/asset/widget/DefaultWidgetActionStrategy;->a:Z

    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeInfo;)Z
    .locals 3

    const/4 v2, 0x1

    if-eqz p5, :cond_0

    :try_start_0
    iget-object v0, p5, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeInfo;->jumpUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/widgets/asset/widget/DefaultWidgetActionStrategy;->c:Lcom/alipay/mobile/framework/service/common/SchemeService;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/framework/service/common/SchemeService;->process(Landroid/net/Uri;)I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p5, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeInfo;->desc:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "\u6267\u884c\u9519\u8bef"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    return v2
.end method

.method public a(Ljava/lang/String;Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeInfo;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeInfo;)V
    .locals 9

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/widget/DefaultWidgetActionStrategy;->b:Landroid/content/Context;

    sget-object v1, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->CLICKED:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string/jumbo v4, "20000004"

    const/4 v5, 0x0

    const-string/jumbo v6, "balanceBaoIndex"

    const-string/jumbo v7, "wealthHome"

    const-string/jumbo v8, "balanceBao"

    invoke-static/range {v0 .. v8}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/widget/DefaultWidgetActionStrategy;->b:Landroid/content/Context;

    sget-object v1, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->CLICKED:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string/jumbo v4, "20000004"

    const/4 v5, 0x0

    const-string/jumbo v6, "20000019Home"

    const-string/jumbo v7, "wealthHome"

    const-string/jumbo v8, "accountBalance"

    invoke-static/range {v0 .. v8}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p2, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeInfo;->jumpUrl:Ljava/lang/String;

    const-string/jumbo v1, "20000014"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/widget/DefaultWidgetActionStrategy;->b:Landroid/content/Context;

    sget-object v1, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->CLICKED:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string/jumbo v4, "20000004"

    const/4 v5, 0x0

    const-string/jumbo v6, "20000014Home"

    const-string/jumbo v7, "wealthHome"

    const-string/jumbo v8, "bankcard"

    invoke-static/range {v0 .. v8}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/widget/DefaultWidgetActionStrategy;->b:Landroid/content/Context;

    sget-object v1, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->CLICKED:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string/jumbo v4, "20000004"

    const/4 v5, 0x0

    const-string/jumbo v6, "openQuickPay"

    const-string/jumbo v7, "wealthHome"

    const-string/jumbo v8, "addCard"

    invoke-static/range {v0 .. v8}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p2, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeInfo;->jumpUrl:Ljava/lang/String;

    const-string/jumbo v1, "SIGNED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/widget/DefaultWidgetActionStrategy;->b:Landroid/content/Context;

    sget-object v1, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->CLICKED:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string/jumbo v4, "20000004"

    const/4 v5, 0x0

    const-string/jumbo v6, "creditPayIndex"

    const-string/jumbo v7, "wealthHome"

    const-string/jumbo v8, "creditPay"

    invoke-static/range {v0 .. v8}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p2, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeInfo;->jumpUrl:Ljava/lang/String;

    const-string/jumbo v1, "UNSIGN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/widget/DefaultWidgetActionStrategy;->b:Landroid/content/Context;

    sget-object v1, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->CLICKED:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string/jumbo v4, "20000004"

    const/4 v5, 0x0

    const-string/jumbo v6, "openCreditPayView"

    const-string/jumbo v7, "wealthHome"

    const-string/jumbo v8, "creditPay"

    invoke-static/range {v0 .. v8}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/widget/DefaultWidgetActionStrategy;->b:Landroid/content/Context;

    sget-object v1, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->CLICKED:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string/jumbo v4, "20000004"

    const/4 v5, 0x0

    const-string/jumbo v6, "20000039Home"

    const-string/jumbo v7, "wealthHome"

    const-string/jumbo v8, "credit"

    invoke-static/range {v0 .. v8}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/widget/DefaultWidgetActionStrategy;->b:Landroid/content/Context;

    sget-object v1, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->CLICKED:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string/jumbo v4, "20000004"

    const/4 v5, 0x0

    const-string/jumbo v6, "10000009Home"

    const-string/jumbo v7, "wealthHome"

    const-string/jumbo v8, "donate"

    invoke-static/range {v0 .. v8}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_6
    iget-object v0, p2, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeInfo;->jumpUrl:Ljava/lang/String;

    const-string/jumbo v1, "isSignedFixed=true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_3

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->CLICKED:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v2, "20000004"

    const-string/jumbo v3, "20000059Home"

    const-string/jumbo v4, "wealthHome"

    const-string/jumbo v5, "20000059"

    invoke-static/range {v0 .. v5}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->CLICKED:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v2, "20000004"

    const-string/jumbo v3, "20000059ProductList"

    const-string/jumbo v4, "wealthHome"

    const-string/jumbo v5, "20000059"

    invoke-static/range {v0 .. v5}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_7
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->CLICKED:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v2, "20000004"

    const-string/jumbo v3, "20000077Home"

    const-string/jumbo v4, "wealthHome"

    const-string/jumbo v5, "20000077"

    invoke-static/range {v0 .. v5}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2faf09e
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
