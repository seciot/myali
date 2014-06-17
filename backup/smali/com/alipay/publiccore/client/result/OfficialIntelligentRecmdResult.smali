.class public Lcom/alipay/publiccore/client/result/OfficialIntelligentRecmdResult;
.super Lcom/alipay/publiccore/common/service/facade/model/result/PublicResult;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public officialIntenRecmdInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/publiccore/client/model/OfficialIntelligentRecmdInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/publiccore/common/service/facade/model/result/PublicResult;-><init>()V

    return-void
.end method
