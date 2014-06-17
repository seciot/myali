.class public interface abstract Lcom/alipay/publiccore/biz/service/impl/rpc/MessageInfoFacade;
.super Ljava/lang/Object;


# virtual methods
.method public abstract deleteMessage(Lcom/alipay/publiccore/client/querier/BatchMessageDeleteQuery;)Lcom/alipay/publiccore/client/result/BatchDeleteResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.publicplatform.message.deleteMessage"
    .end annotation
.end method

.method public abstract listMessageByQuery(Lcom/alipay/publiccore/client/querier/MessageQuery;)Lcom/alipay/publiccore/client/result/ListMessageResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.publicplatform.message.listMessageByQuery"
    .end annotation
.end method

.method public abstract queryOfficialAccountShare(Lcom/alipay/publiccore/client/req/OfficialMsgShareReq;)Lcom/alipay/publiccore/client/result/OfficialMsgShareResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.publicplatform.message.queryOfficialAccountShare"
    .end annotation
.end method
