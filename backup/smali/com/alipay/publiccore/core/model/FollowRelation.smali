.class public Lcom/alipay/publiccore/core/model/FollowRelation;
.super Lcom/alipay/publiccore/common/service/facade/model/ToString;


# instance fields
.field public followedeeId:Ljava/lang/String;

.field public followedeeType:Ljava/lang/String;

.field public followerId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/publiccore/common/service/facade/model/ToString;-><init>()V

    return-void
.end method


# virtual methods
.method public getFollowedeeId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/publiccore/core/model/FollowRelation;->followedeeId:Ljava/lang/String;

    return-object v0
.end method

.method public getFollowedeeType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/publiccore/core/model/FollowRelation;->followedeeType:Ljava/lang/String;

    return-object v0
.end method

.method public getFollowerId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/publiccore/core/model/FollowRelation;->followerId:Ljava/lang/String;

    return-object v0
.end method

.method public setFollowedeeId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/publiccore/core/model/FollowRelation;->followedeeId:Ljava/lang/String;

    return-void
.end method

.method public setFollowedeeType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/publiccore/core/model/FollowRelation;->followedeeType:Ljava/lang/String;

    return-void
.end method

.method public setFollowerId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/publiccore/core/model/FollowRelation;->followerId:Ljava/lang/String;

    return-void
.end method
