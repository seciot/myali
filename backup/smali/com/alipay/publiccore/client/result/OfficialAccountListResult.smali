.class public Lcom/alipay/publiccore/client/result/OfficialAccountListResult;
.super Lcom/alipay/publiccore/common/service/facade/model/result/PagingResult;


# instance fields
.field public officialAccounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/publiccore/client/model/OfficialAccountInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/publiccore/common/service/facade/model/result/PagingResult;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/publiccore/client/result/OfficialAccountListResult;->officialAccounts:Ljava/util/List;

    return-void
.end method
