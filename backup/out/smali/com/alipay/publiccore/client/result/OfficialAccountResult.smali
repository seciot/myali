.class public Lcom/alipay/publiccore/client/result/OfficialAccountResult;
.super Lcom/alipay/publiccore/common/service/facade/model/result/PublicResult;


# instance fields
.field public buttonName:Ljava/lang/String;

.field public buttonUrl:Ljava/lang/String;

.field public forceFollowSuccess:Ljava/lang/String;

.field public officialAccount:Lcom/alipay/publiccore/client/model/OfficialAccountInfo;

.field public toast:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/publiccore/common/service/facade/model/result/PublicResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getForceFollowSuccess()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/publiccore/client/result/OfficialAccountResult;->forceFollowSuccess:Ljava/lang/String;

    return-object v0
.end method

.method public getOfficialAccount()Lcom/alipay/publiccore/client/model/OfficialAccountInfo;
    .locals 1

    iget-object v0, p0, Lcom/alipay/publiccore/client/result/OfficialAccountResult;->officialAccount:Lcom/alipay/publiccore/client/model/OfficialAccountInfo;

    return-object v0
.end method

.method public getToast()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/publiccore/client/result/OfficialAccountResult;->toast:Ljava/lang/String;

    return-object v0
.end method

.method public setForceFollowSuccess(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/publiccore/client/result/OfficialAccountResult;->forceFollowSuccess:Ljava/lang/String;

    return-void
.end method

.method public setOfficialAccount(Lcom/alipay/publiccore/client/model/OfficialAccountInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/publiccore/client/result/OfficialAccountResult;->officialAccount:Lcom/alipay/publiccore/client/model/OfficialAccountInfo;

    return-void
.end method

.method public setToast(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/publiccore/client/result/OfficialAccountResult;->toast:Ljava/lang/String;

    return-void
.end method
