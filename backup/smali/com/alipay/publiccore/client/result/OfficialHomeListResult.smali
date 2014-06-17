.class public Lcom/alipay/publiccore/client/result/OfficialHomeListResult;
.super Lcom/alipay/publiccore/common/service/facade/model/result/PagingResult;


# instance fields
.field public dynamicConfigUid:Ljava/lang/String;

.field public followAccounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/publiccore/client/model/FollowAccountInfo;",
            ">;"
        }
    .end annotation
.end field

.field public userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/publiccore/common/service/facade/model/result/PagingResult;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/publiccore/client/result/OfficialHomeListResult;->followAccounts:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getDynamicConfigUid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/publiccore/client/result/OfficialHomeListResult;->dynamicConfigUid:Ljava/lang/String;

    return-object v0
.end method

.method public getFollowAccounts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/publiccore/client/model/FollowAccountInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/publiccore/client/result/OfficialHomeListResult;->followAccounts:Ljava/util/List;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/publiccore/client/result/OfficialHomeListResult;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public setDynamicConfigUid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/publiccore/client/result/OfficialHomeListResult;->dynamicConfigUid:Ljava/lang/String;

    return-void
.end method

.method public setFollowAccounts(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/publiccore/client/model/FollowAccountInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alipay/publiccore/client/result/OfficialHomeListResult;->followAccounts:Ljava/util/List;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/publiccore/client/result/OfficialHomeListResult;->userId:Ljava/lang/String;

    return-void
.end method
