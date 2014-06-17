.class public Lcom/alipay/mobilewealth/biz/service/gw/model/fixed/FixedAppointmentInfo;
.super Lcom/alipay/mobilewealth/common/service/facade/util/ToString;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public appointmentId:Ljava/lang/String;

.field public bizItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilewealth/core/model/models/common/BizItem;",
            ">;"
        }
    .end annotation
.end field

.field public button:Lcom/alipay/mobilewealth/core/model/models/common/BizItem;

.field public dealAmount:Ljava/lang/String;

.field public dealInfo:Lcom/alipay/mobilewealth/core/model/models/common/BizItem;

.field public dealPercent:F

.field public finishTips:Lcom/alipay/mobilewealth/core/model/models/common/BizItem;

.field public remainAmount:Ljava/lang/String;

.field public totalAmount:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobilewealth/common/service/facade/util/ToString;-><init>()V

    return-void
.end method
