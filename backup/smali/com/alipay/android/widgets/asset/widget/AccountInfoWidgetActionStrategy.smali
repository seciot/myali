.class public Lcom/alipay/android/widgets/asset/widget/AccountInfoWidgetActionStrategy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/android/widgets/asset/widget/IWidgetActionStrategy;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/android/widgets/asset/widget/AccountInfoWidgetActionStrategy;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Map;ILcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeInfo;)Lcom/alipay/android/widgets/asset/widget/IAssetWidgetView;
    .locals 2
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

    new-instance v0, Lcom/alipay/asset/common/view/WealthAccountInfoView;

    iget-object v1, p0, Lcom/alipay/android/widgets/asset/widget/AccountInfoWidgetActionStrategy;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alipay/asset/common/view/WealthAccountInfoView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public final a(Z)V
    .locals 0

    return-void
.end method

.method public final a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeInfo;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final a(Ljava/lang/String;Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeInfo;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final b(Ljava/lang/String;Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeInfo;)V
    .locals 9

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/widget/AccountInfoWidgetActionStrategy;->a:Landroid/content/Context;

    sget-object v1, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->CLICKED:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v4, "20000004"

    const-string/jumbo v6, "accountInfoIndex"

    const-string/jumbo v7, "wealthHome"

    const-string/jumbo v8, "accountInfo"

    move-object v3, v2

    move-object v5, v2

    invoke-static/range {v0 .. v8}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
