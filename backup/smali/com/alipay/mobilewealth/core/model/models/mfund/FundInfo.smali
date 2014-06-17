.class public Lcom/alipay/mobilewealth/core/model/models/mfund/FundInfo;
.super Lcom/alipay/mobilewealth/common/service/facade/util/ToString;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public canPurchase:Z

.field public fundCode:Ljava/lang/String;

.field public fundInstInfo:Lcom/alipay/mobilewealth/core/model/models/mfund/FundInstInfo;

.field public fundName:Ljava/lang/String;

.field public notices:Ljava/util/Map;
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

.field public tenThousandIncome:Ljava/lang/String;

.field public weekRate:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobilewealth/common/service/facade/util/ToString;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobilewealth/core/model/models/mfund/FundInfo;->notices:Ljava/util/Map;

    return-void
.end method
