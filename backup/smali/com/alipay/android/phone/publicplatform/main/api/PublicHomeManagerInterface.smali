.class public interface abstract Lcom/alipay/android/phone/publicplatform/main/api/PublicHomeManagerInterface;
.super Ljava/lang/Object;
.source "PublicHomeManagerInterface.java"


# virtual methods
.method public abstract addObserver(Ljava/util/Observer;)V
.end method

.method public abstract calculateMsgCount(Ljava/lang/String;)Lcom/alipay/android/phone/publicplatform/main/model/MsgCountModel;
.end method

.method public abstract getFollowAccountInfoModelById(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;
.end method

.method public abstract init()V
.end method

.method public abstract isRpcReq()Z
.end method

.method public abstract notifyMsgCountUpdate()V
.end method

.method public abstract queryFewUserFollowAccountFromRemote(Ljava/util/List;)Lcom/alipay/publiccore/client/result/OfficialHomeListResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alipay/publiccore/client/result/OfficialHomeListResult;"
        }
    .end annotation
.end method

.method public abstract queryUserFollowAccountFromLocal(Ljava/lang/String;Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryUserFollowAccountFromRemote()Lcom/alipay/publiccore/client/result/OfficialHomeListResult;
.end method

.method public abstract removeLocalFollow(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract setOnPublicHomeListQueryFinishListener(Lcom/alipay/android/phone/publicplatform/main/listener/OnPublicHomeListQueryFinishListener;)V
.end method

.method public abstract syncFewFollowAccountInfoToLocal(Lcom/alipay/publiccore/client/result/OfficialHomeListResult;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/publiccore/client/result/OfficialHomeListResult;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;",
            ">;"
        }
    .end annotation
.end method

.method public abstract syncFollowAccountInfoToLocal(Lcom/alipay/publiccore/client/result/OfficialHomeListResult;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/publiccore/client/result/OfficialHomeListResult;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;",
            ">;"
        }
    .end annotation
.end method

.method public abstract updateThirdPartyLastMsg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Z
.end method

.method public abstract updateUnReadMsgCount(Ljava/lang/String;Ljava/lang/String;I)Z
.end method
