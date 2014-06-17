package com.alipay.statusbar.common.sal.mobilegw;

import com.alipay.mobile.framework.service.annotation.OperationType;
import java.util.List;
import java.util.Map;

public abstract interface StatusbarTodoFacade
{
  @OperationType("alipay.webplatform.statusbar.todo.query")
  public abstract TodoQueryResult pageQueryTodoList(TodoQueryRequest paramTodoQueryRequest);

  @OperationType("alipay.webplatform.statusbar.todo.remove")
  public abstract Map<String, Boolean> removeToHistory(List<TodoRemoveRequest> paramList);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.statusbar.common.sal.mobilegw.StatusbarTodoFacade
 * JD-Core Version:    0.6.2
 */