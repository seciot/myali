package com.alipay.statusbar.common.sal.mobilegw;

import com.alipay.mobile.framework.service.annotation.OperationType;

public abstract interface StatusbarTodoCommonFacade
{
  @OperationType("alipay.webplatform.statusbar.todo.commonQuery")
  public abstract TodoQueryResult pageQueryCommonTodoList(CommonTodoQueryRequest paramCommonTodoQueryRequest);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.statusbar.common.sal.mobilegw.StatusbarTodoCommonFacade
 * JD-Core Version:    0.6.2
 */