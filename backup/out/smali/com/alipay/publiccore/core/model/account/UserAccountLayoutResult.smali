.class public Lcom/alipay/publiccore/core/model/account/UserAccountLayoutResult;
.super Lcom/alipay/publiccore/common/service/facade/model/result/PublicResult;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public layoutModel:Lcom/alipay/publiccore/core/model/account/LayoutModel;

.field public thirdAccountMenus:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/publiccore/core/model/account/ButtonObjectList;",
            ">;"
        }
    .end annotation
.end field

.field public thirdPartyAccounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/publiccore/core/model/ThirdPartyAccount;",
            ">;"
        }
    .end annotation
.end field

.field public userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/publiccore/common/service/facade/model/result/PublicResult;-><init>()V

    return-void
.end method
