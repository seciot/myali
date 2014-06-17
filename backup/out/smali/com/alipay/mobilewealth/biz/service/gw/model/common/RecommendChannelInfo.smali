.class public Lcom/alipay/mobilewealth/biz/service/gw/model/common/RecommendChannelInfo;
.super Lcom/alipay/mobilewealth/common/service/facade/util/ToString;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public assignedChannel:Ljava/lang/String;

.field public availableLimit:Ljava/lang/String;

.field public bankLogUrl:Ljava/lang/String;

.field public bankName:Ljava/lang/String;

.field public bizItem:Lcom/alipay/mobilewealth/core/model/models/common/BizItem;

.field public bizProduct:Ljava/lang/String;

.field public cardLast4No:Ljava/lang/String;

.field public cardNo:Ljava/lang/String;

.field public channelType:Ljava/lang/String;

.field public extInfos:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public instId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobilewealth/common/service/facade/util/ToString;-><init>()V

    return-void
.end method
