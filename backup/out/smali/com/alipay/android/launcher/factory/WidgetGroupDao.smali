.class public Lcom/alipay/android/launcher/factory/WidgetGroupDao;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/launcher/beans/WidgetGroup;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/alipay/android/launcher/beans/WidgetGroup;

    const-string/jumbo v2, "20000002"

    const-string/jumbo v3, "android-phone-openplatform-home"

    const-string/jumbo v4, "com.alipay.android.phone.home.widget.HomeWidgetGroup"

    const-string/jumbo v5, "true"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alipay/android/launcher/beans/WidgetGroup;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/alipay/android/launcher/beans/WidgetGroup;

    const-string/jumbo v2, "20000101"

    const-string/jumbo v3, "android-phone-publicplatform-home"

    const-string/jumbo v4, "com.alipay.android.phone.publicplatform.home.PublicHomeWidgetGroup"

    const-string/jumbo v5, "true"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alipay/android/launcher/beans/WidgetGroup;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/alipay/android/launcher/beans/WidgetGroup;

    const-string/jumbo v2, "20000061"

    const-string/jumbo v3, "android-phone-discovery-discoverywidget"

    const-string/jumbo v4, "com.alipay.android.widgets.discovery.DiscoveryWidgetGroup"

    const-string/jumbo v5, "false"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alipay/android/launcher/beans/WidgetGroup;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/alipay/android/launcher/beans/WidgetGroup;

    const-string/jumbo v2, "20000004"

    const-string/jumbo v3, "android-phone-wealth-home"

    const-string/jumbo v4, "com.alipay.android.widgets.asset.AssetWidgetGroup"

    const-string/jumbo v5, "false"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alipay/android/launcher/beans/WidgetGroup;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
