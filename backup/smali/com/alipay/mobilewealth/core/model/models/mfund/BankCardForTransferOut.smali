.class public Lcom/alipay/mobilewealth/core/model/models/mfund/BankCardForTransferOut;
.super Lcom/alipay/mobilewealth/core/model/models/bank/BaseBankCard;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public arrivingTypeInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilewealth/core/model/models/mfund/ArrivingTypeInfo;",
            ">;"
        }
    .end annotation
.end field

.field public arrivingTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilewealth/core/model/models/mfund/ArrivingType;",
            ">;"
        }
    .end annotation
.end field

.field public fundTransferOutTipInfo:Lcom/alipay/mobilewealth/core/model/models/mfund/FundTransferOutTipInfo;

.field public perTimeAmountString:Ljava/lang/String;

.field public quotaAmount:Ljava/lang/String;

.field public quotaContent:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobilewealth/core/model/models/bank/BaseBankCard;-><init>()V

    return-void
.end method
