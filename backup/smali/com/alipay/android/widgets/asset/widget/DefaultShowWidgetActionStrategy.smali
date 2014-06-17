.class public Lcom/alipay/android/widgets/asset/widget/DefaultShowWidgetActionStrategy;
.super Lcom/alipay/android/widgets/asset/widget/DefaultWidgetActionStrategy;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/android/widgets/asset/widget/DefaultWidgetActionStrategy;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeInfo;)Z
    .locals 1

    if-eqz p5, :cond_0

    invoke-super/range {p0 .. p5}, Lcom/alipay/android/widgets/asset/widget/DefaultWidgetActionStrategy;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeInfo;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeInfo;)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p0, Lcom/alipay/android/widgets/asset/widget/DefaultShowWidgetActionStrategy;->a:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method
