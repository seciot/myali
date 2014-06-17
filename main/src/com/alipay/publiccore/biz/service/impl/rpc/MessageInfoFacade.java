package com.alipay.publiccore.biz.service.impl.rpc;

import com.alipay.mobile.framework.service.annotation.OperationType;
import com.alipay.publiccore.client.querier.BatchMessageDeleteQuery;
import com.alipay.publiccore.client.querier.MessageQuery;
import com.alipay.publiccore.client.req.OfficialMsgShareReq;
import com.alipay.publiccore.client.result.BatchDeleteResult;
import com.alipay.publiccore.client.result.ListMessageResult;
import com.alipay.publiccore.client.result.OfficialMsgShareResult;

public abstract interface MessageInfoFacade
{
  @OperationType("alipay.publicplatform.message.deleteMessage")
  public abstract BatchDeleteResult deleteMessage(BatchMessageDeleteQuery paramBatchMessageDeleteQuery);

  @OperationType("alipay.publicplatform.message.listMessageByQuery")
  public abstract ListMessageResult listMessageByQuery(MessageQuery paramMessageQuery);

  @OperationType("alipay.publicplatform.message.queryOfficialAccountShare")
  public abstract OfficialMsgShareResult queryOfficialAccountShare(OfficialMsgShareReq paramOfficialMsgShareReq);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.publiccore.biz.service.impl.rpc.MessageInfoFacade
 * JD-Core Version:    0.6.2
 */