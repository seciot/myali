.class public abstract Lcom/alipay/mobile/framework/service/ext/appentry/AppEntryConfigService;
.super Lcom/alipay/mobile/framework/service/CommonService;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/CommonService;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getWidgetInfoListbyContainerId(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/appentry/WidgetItemInfo;",
            ">;"
        }
    .end annotation
.end method
