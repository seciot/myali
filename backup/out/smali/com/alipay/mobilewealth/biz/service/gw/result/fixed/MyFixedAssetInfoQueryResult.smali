.class public Lcom/alipay/mobilewealth/biz/service/gw/result/fixed/MyFixedAssetInfoQueryResult;
.super Lcom/alipay/mobilewealth/common/service/facade/result/CommonPageResult;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public appointDealTips:Ljava/lang/String;

.field public appointmentId:Ljava/lang/String;

.field public appointmentText:Ljava/lang/String;

.field public appointmentTitle:Ljava/lang/String;

.field public assetInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilewealth/biz/service/gw/model/fixed/FixedAssetInfo;",
            ">;"
        }
    .end annotation
.end field

.field public expiredItem:Lcom/alipay/mobilewealth/core/model/models/common/BizItem;

.field public hasAppointment:Z

.field public hiddenAsset:Z

.field public showApponitment:Z

.field public totalAmount:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobilewealth/common/service/facade/result/CommonPageResult;-><init>()V

    return-void
.end method
