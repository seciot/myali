.class public Lcom/alipay/publiccore/client/model/FollowAccountInfo;
.super Ljava/lang/Object;


# static fields
.field public static final uniqueIndexName:Ljava/lang/String; = "followaccountinfo_uniqueindex"


# instance fields
.field public avatar:Ljava/lang/String;

.field public cltDefIconType:Ljava/lang/String;

.field public followObjectId:Ljava/lang/String;

.field public followType:Ljava/lang/String;

.field public gmtFollowTime:J

.field public gotoAppUri:Ljava/lang/String;

.field public id:I

.field public latestMsg:Ljava/lang/String;

.field public latestMsgThridAccount:Ljava/lang/String;

.field public latestMsgTime:J

.field public msgNoteType:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public operateProperties:Lcom/alipay/publiccore/client/model/OperateProperties;

.field public publicType:Ljava/lang/String;

.field public unReadMsgCount:I

.field public wgtMsgId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAvatar()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public getCltDefIconType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->cltDefIconType:Ljava/lang/String;

    return-object v0
.end method

.method public getDeleteType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->operateProperties:Lcom/alipay/publiccore/client/model/OperateProperties;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->operateProperties:Lcom/alipay/publiccore/client/model/OperateProperties;

    invoke-virtual {v0}, Lcom/alipay/publiccore/client/model/OperateProperties;->getDeleteType()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getFollowObjectId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->followObjectId:Ljava/lang/String;

    return-object v0
.end method

.method public getFollowType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->followType:Ljava/lang/String;

    return-object v0
.end method

.method public getGmtFollowTime()J
    .locals 2

    iget-wide v0, p0, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->gmtFollowTime:J

    return-wide v0
.end method

.method public getGotoAppUri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->gotoAppUri:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->id:I

    return v0
.end method

.method public getLatestMsg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->latestMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getLatestMsgThridAccount()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->latestMsgThridAccount:Ljava/lang/String;

    return-object v0
.end method

.method public getLatestMsgTime()J
    .locals 2

    iget-wide v0, p0, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->latestMsgTime:J

    return-wide v0
.end method

.method public getMsgNoteType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->msgNoteType:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOperateProperties()Lcom/alipay/publiccore/client/model/OperateProperties;
    .locals 1

    iget-object v0, p0, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->operateProperties:Lcom/alipay/publiccore/client/model/OperateProperties;

    return-object v0
.end method

.method public getPublicType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->publicType:Ljava/lang/String;

    return-object v0
.end method

.method public getTopType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->operateProperties:Lcom/alipay/publiccore/client/model/OperateProperties;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->operateProperties:Lcom/alipay/publiccore/client/model/OperateProperties;

    invoke-virtual {v0}, Lcom/alipay/publiccore/client/model/OperateProperties;->getTopType()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getUnReadMsgCount()I
    .locals 1

    iget v0, p0, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->unReadMsgCount:I

    return v0
.end method

.method public getWgtMsgId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->wgtMsgId:Ljava/lang/String;

    return-object v0
.end method

.method public setAvatar(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->avatar:Ljava/lang/String;

    return-void
.end method

.method public setCltDefIconType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->cltDefIconType:Ljava/lang/String;

    return-void
.end method

.method public setFollowObjectId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->followObjectId:Ljava/lang/String;

    return-void
.end method

.method public setFollowType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->followType:Ljava/lang/String;

    return-void
.end method

.method public setGmtFollowTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->gmtFollowTime:J

    return-void
.end method

.method public setGotoAppUri(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->gotoAppUri:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->id:I

    return-void
.end method

.method public setLatestMsg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->latestMsg:Ljava/lang/String;

    return-void
.end method

.method public setLatestMsgThridAccount(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->latestMsgThridAccount:Ljava/lang/String;

    return-void
.end method

.method public setLatestMsgTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->latestMsgTime:J

    return-void
.end method

.method public setMsgNoteType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->msgNoteType:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->name:Ljava/lang/String;

    return-void
.end method

.method public setOperateProperties(Lcom/alipay/publiccore/client/model/OperateProperties;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->operateProperties:Lcom/alipay/publiccore/client/model/OperateProperties;

    return-void
.end method

.method public setPublicType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->publicType:Ljava/lang/String;

    return-void
.end method

.method public setUnReadMsgCount(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->unReadMsgCount:I

    return-void
.end method

.method public setWgtMsgId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->wgtMsgId:Ljava/lang/String;

    return-void
.end method
