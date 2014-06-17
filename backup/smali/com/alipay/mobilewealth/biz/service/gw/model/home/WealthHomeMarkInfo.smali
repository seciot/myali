.class public Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeMarkInfo;
.super Lcom/alipay/mobilewealth/common/service/facade/util/ToString;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public mark:Z

.field public markLable:Ljava/lang/String;

.field public markStyle:Ljava/lang/String;

.field public markTag:Ljava/lang/String;

.field public markType:Ljava/lang/String;

.field public widgetId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobilewealth/common/service/facade/util/ToString;-><init>()V

    const-string/jumbo v0, "point"

    iput-object v0, p0, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeMarkInfo;->markStyle:Ljava/lang/String;

    return-void
.end method
