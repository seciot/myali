.class public Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;
.super Ljava/lang/Object;
.source "FollowAccountInfoModel.java"


# static fields
.field public static final uniqueIndexName:Ljava/lang/String; = "followaccountinfo_uniqueindex"


# instance fields
.field public avatar:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public cancelDefaultTop:Z
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public cltDefIconType:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public defaultOrder:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public deleteType:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public followObjectId:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        uniqueIndex = true
        uniqueIndexName = "followaccountinfo_uniqueindex"
    .end annotation
.end field

.field public followType:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public forceTopOrder:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public gmtFollowTime:J
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public gotoAppUri:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public id:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        generatedId = true
    .end annotation
.end field

.field public latestMsg:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public latestMsgThridAccount:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public latestMsgTime:J
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public localDelete:Z
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public msgNoteType:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public name:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public publicType:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public top:Z
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public topOperateTime:J
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public topType:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public unReadMsgCount:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public userId:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        uniqueIndex = true
        uniqueIndexName = "followaccountinfo_uniqueindex"
    .end annotation
.end field

.field public wgtMsgId:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public constructor <init>(Lcom/alipay/publiccore/client/model/FollowAccountInfo;)V
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-virtual {p1}, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->getOperateProperties()Lcom/alipay/publiccore/client/model/OperateProperties;

    move-result-object v2

    .line 21
    iget-object v0, p1, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->avatar:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->avatar:Ljava/lang/String;

    .line 23
    iget-object v0, p1, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->cltDefIconType:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->cltDefIconType:Ljava/lang/String;

    .line 24
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/alipay/publiccore/client/model/OperateProperties;->getDefaultOrder()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->defaultOrder:Ljava/lang/String;

    .line 25
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/alipay/publiccore/client/model/OperateProperties;->getDeleteType()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->deleteType:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->getFollowObjectId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->followObjectId:Ljava/lang/String;

    .line 27
    invoke-virtual {p1}, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->getFollowType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->followType:Ljava/lang/String;

    .line 29
    invoke-virtual {p1}, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->getGmtFollowTime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->gmtFollowTime:J

    .line 30
    invoke-virtual {p1}, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->getGotoAppUri()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->gotoAppUri:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->getId()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->id:I

    .line 32
    invoke-virtual {p1}, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->getLatestMsg()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->latestMsg:Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->getLatestMsgThridAccount()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->latestMsgThridAccount:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->getLatestMsgTime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->latestMsgTime:J

    .line 37
    iget-object v0, p1, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->msgNoteType:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->msgNoteType:Ljava/lang/String;

    .line 38
    iget-object v0, p1, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->name:Ljava/lang/String;

    .line 39
    iget-object v0, p1, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->publicType:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->publicType:Ljava/lang/String;

    .line 42
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/alipay/publiccore/client/model/OperateProperties;->getTopType()Ljava/lang/String;

    move-result-object v1

    :cond_0
    iput-object v1, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->topType:Ljava/lang/String;

    .line 43
    iget v0, p1, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->unReadMsgCount:I

    iput v0, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->unReadMsgCount:I

    .line 45
    invoke-virtual {p1}, Lcom/alipay/publiccore/client/model/FollowAccountInfo;->getWgtMsgId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->wgtMsgId:Ljava/lang/String;

    .line 46
    return-void

    :cond_1
    move-object v0, v1

    .line 24
    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 25
    goto :goto_1
.end method


# virtual methods
.method public getAvatar()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public getCltDefIconType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->cltDefIconType:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultOrder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->defaultOrder:Ljava/lang/String;

    return-object v0
.end method

.method public getDeleteType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->deleteType:Ljava/lang/String;

    return-object v0
.end method

.method public getFollowObjectId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->followObjectId:Ljava/lang/String;

    return-object v0
.end method

.method public getFollowType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->followType:Ljava/lang/String;

    return-object v0
.end method

.method public getForceTopOrder()I
    .locals 1

    .prologue
    .line 349
    iget v0, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->forceTopOrder:I

    return v0
.end method

.method public getGmtFollowTime()J
    .locals 2

    .prologue
    .line 169
    iget-wide v0, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->gmtFollowTime:J

    return-wide v0
.end method

.method public getGotoAppUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->gotoAppUri:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->id:I

    return v0
.end method

.method public getLatestMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->latestMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getLatestMsgThridAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->latestMsgThridAccount:Ljava/lang/String;

    return-object v0
.end method

.method public getLatestMsgTime()J
    .locals 2

    .prologue
    .line 183
    iget-wide v0, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->latestMsgTime:J

    return-wide v0
.end method

.method public getMsgNoteType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->msgNoteType:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPublicType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->publicType:Ljava/lang/String;

    return-object v0
.end method

.method public getTopOperateTime()J
    .locals 2

    .prologue
    .line 335
    iget-wide v0, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->topOperateTime:J

    return-wide v0
.end method

.method public getTopType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->topType:Ljava/lang/String;

    return-object v0
.end method

.method public getUnReadMsgCount()I
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->unReadMsgCount:I

    return v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getWgtMsgId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->wgtMsgId:Ljava/lang/String;

    return-object v0
.end method

.method public isCancelDefaultTop()Z
    .locals 1

    .prologue
    .line 321
    iget-boolean v0, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->cancelDefaultTop:Z

    return v0
.end method

.method public isLocalDelete()Z
    .locals 1

    .prologue
    .line 307
    iget-boolean v0, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->localDelete:Z

    return v0
.end method

.method public isTop()Z
    .locals 1

    .prologue
    .line 278
    iget-boolean v0, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->top:Z

    return v0
.end method

.method public setAvatar(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->avatar:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setCancelDefaultTop(Z)V
    .locals 0
    .parameter

    .prologue
    .line 325
    iput-boolean p1, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->cancelDefaultTop:Z

    .line 326
    return-void
.end method

.method public setCltDefIconType(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 377
    iput-object p1, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->cltDefIconType:Ljava/lang/String;

    .line 378
    return-void
.end method

.method public setDefaultOrder(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 264
    iput-object p1, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->defaultOrder:Ljava/lang/String;

    .line 265
    return-void
.end method

.method public setDeleteType(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 250
    iput-object p1, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->deleteType:Ljava/lang/String;

    .line 251
    return-void
.end method

.method public setFollowObjectId(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->followObjectId:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setFollowType(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->followType:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public setForceTopOrder(I)V
    .locals 0
    .parameter

    .prologue
    .line 353
    iput p1, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->forceTopOrder:I

    .line 354
    return-void
.end method

.method public setGmtFollowTime(J)V
    .locals 0
    .parameter

    .prologue
    .line 165
    iput-wide p1, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->gmtFollowTime:J

    .line 166
    return-void
.end method

.method public setGotoAppUri(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 221
    iput-object p1, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->gotoAppUri:Ljava/lang/String;

    .line 222
    return-void
.end method

.method public setId(I)V
    .locals 0
    .parameter

    .prologue
    .line 56
    iput p1, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->id:I

    .line 57
    return-void
.end method

.method public setLatestMsg(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->latestMsg:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public setLatestMsgThridAccount(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 151
    iput-object p1, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->latestMsgThridAccount:Ljava/lang/String;

    .line 152
    return-void
.end method

.method public setLatestMsgTime(J)V
    .locals 0
    .parameter

    .prologue
    .line 179
    iput-wide p1, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->latestMsgTime:J

    .line 180
    return-void
.end method

.method public setLocalDelete(Z)V
    .locals 0
    .parameter

    .prologue
    .line 311
    iput-boolean p1, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->localDelete:Z

    .line 312
    return-void
.end method

.method public setMsgNoteType(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 207
    iput-object p1, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->msgNoteType:Ljava/lang/String;

    .line 208
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->name:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setPublicType(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 193
    iput-object p1, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->publicType:Ljava/lang/String;

    .line 194
    return-void
.end method

.method public setTop(Z)V
    .locals 0
    .parameter

    .prologue
    .line 282
    iput-boolean p1, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->top:Z

    .line 283
    return-void
.end method

.method public setTopOperateTime(J)V
    .locals 0
    .parameter

    .prologue
    .line 339
    iput-wide p1, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->topOperateTime:J

    .line 340
    return-void
.end method

.method public setTopType(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 236
    iput-object p1, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->topType:Ljava/lang/String;

    .line 237
    return-void
.end method

.method public setUnReadMsgCount(I)V
    .locals 0
    .parameter

    .prologue
    .line 123
    iput p1, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->unReadMsgCount:I

    .line 124
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 297
    iput-object p1, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->userId:Ljava/lang/String;

    .line 298
    return-void
.end method

.method public setWgtMsgId(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 365
    iput-object p1, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->wgtMsgId:Ljava/lang/String;

    .line 366
    return-void
.end method
