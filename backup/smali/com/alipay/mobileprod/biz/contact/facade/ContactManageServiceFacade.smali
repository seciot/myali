.class public interface abstract Lcom/alipay/mobileprod/biz/contact/facade/ContactManageServiceFacade;
.super Ljava/lang/Object;


# virtual methods
.method public abstract getAlipayContactList()Ljava/util/List;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobileprod.contact.getAlipayContactList"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobileprod/biz/contact/model/AlipayContactUserInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAvatarByUserId(Ljava/lang/String;)Ljava/lang/String;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobileprod.contact.getAvatarByUserId"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract getAvatarByUserIdBatch(Ljava/util/List;)Ljava/util/Map;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobileprod.contact.getAvatarByUserIdBatch"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract upload(Lcom/alipay/mobileprod/biz/contact/model/UploadContact;Z)Z
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobileprod.contact.upload"
    .end annotation
.end method
