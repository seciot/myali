.class public Lcom/alipay/mobile/framework/widgetcontainer/view/WidgetGridContainer;
.super Lcom/alipay/mobile/framework/widgetcontainer/view/WidgetContainer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/mobile/framework/widgetcontainer/view/WidgetContainer;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/framework/widgetcontainer/view/WidgetContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected getContentView(Ljava/util/List;)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/appentry/WidgetItemInfo;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method
