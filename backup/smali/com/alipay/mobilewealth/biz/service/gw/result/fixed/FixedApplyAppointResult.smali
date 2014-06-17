.class public Lcom/alipay/mobilewealth/biz/service/gw/result/fixed/FixedApplyAppointResult;
.super Lcom/alipay/mobilewealth/common/service/facade/result/CommonResult;

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

.field public dealAmount:Ljava/lang/String;

.field public hiddenedMobile:Ljava/lang/String;

.field public mobile:Ljava/lang/String;

.field public tairKey:Ljava/lang/String;

.field public tips:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobilewealth/common/service/facade/result/CommonResult;-><init>()V

    return-void
.end method
